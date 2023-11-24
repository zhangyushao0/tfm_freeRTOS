/*
 * mpu.c
 *
 * Created: 2021/4/28 11:33:12
 *  Author: dn
 */
#include "aslr_mpu.h"
#include "stm32l5xx.h"

struct mpu_armv8m_region_cfg_t_aslr region_cfg_s_service1 = {
    0x0,
    ASLR_FLASH_SECURE_SERVICE1_REGION_START,
    ASLR_FLASH_SECURE_SERVICE1_REGION_SIZE,
    MPU_ARMV8M_MAIR_ATTR_CODE_IDX_ASLR,
    MPU_ARMV8M_XN_EXEC_NEVER,
    MPU_ARMV8M_AP_RW_PRIV_UNPRIV,
    MPU_ARMV8M_SH_NONE};
// struct mpu_armv8m_region_cfg_t_aslr region_cfg2 = {
//     0x2,
//     0x20011000UL,
//     0x20011FFFUL,
//     MPU_ARMV8M_MAIR_ATTR_CODE_IDX_ASLR,
//     MPU_ARMV8M_XN_EXEC_OK,
//     MPU_ARMV8M_AP_RW_PRIV_UNPRIV,
//     MPU_ARMV8M_SH_NONE};
// struct mpu_armv8m_region_cfg_t_aslr region_cfg3 = {
//     0x3,
//     0x20012000UL,
//     0x20012FFFUL,
//     MPU_ARMV8M_MAIR_ATTR_CODE_IDX_ASLR,
//     MPU_ARMV8M_XN_EXEC_OK,
//     MPU_ARMV8M_AP_RW_PRIV_UNPRIV,
//     MPU_ARMV8M_SH_NONE};
struct mpu_armv8m_region_cfg_t_aslr region_cfg_ns_flash = {
    0x0,
    ALSR_FLASH_UNEXECUTABLE_REGION_START,
    ALSR_FLASH_UNEXECUTABLE_REGION_END,
    MPU_ARMV8M_MAIR_ATTR_CODE_IDX_ASLR,
    MPU_ARMV8M_XN_EXEC_NEVER,
    MPU_ARMV8M_AP_RW_PRIV_UNPRIV,
    MPU_ARMV8M_SH_NONE};
enum mpu_armv8m_error_t_aslr mpu_armv8m_region_enable_aslr(
    struct mpu_armv8m_dev_t_aslr* dev,
    struct mpu_armv8m_region_cfg_t_aslr* region_cfg) {
    MPU_Type* mpu = (MPU_Type*)dev->base;

    enum mpu_armv8m_error_t_aslr ret_val = MPU_ARMV8M_OK;
    uint32_t ctrl_before;
    uint32_t base_cfg;
    uint32_t limit_cfg;

    /*FIXME : Add complete error checking*/
    if ((region_cfg->region_base & ~MPU_RBAR_BASE_Msk) != 0) {
        return MPU_ARMV8M_ERROR;
    }
    /* region_limit doesn't need to be aligned but the scatter
     * file needs to be setup to ensure that partitions do not overlap.
     */

    ctrl_before = mpu->CTRL;
    mpu->CTRL = 0;

    mpu->RNR = region_cfg->region_nr & MPU_RNR_REGION_Msk;

    /* This 0s the lower bits of the base address */
    base_cfg = region_cfg->region_base & MPU_RBAR_BASE_Msk;
    base_cfg |= (region_cfg->attr_sh << MPU_RBAR_SH_Pos) & MPU_RBAR_SH_Msk;
    base_cfg |= (region_cfg->attr_access << MPU_RBAR_AP_Pos) & MPU_RBAR_AP_Msk;
    base_cfg |= (region_cfg->attr_exec << MPU_RBAR_XN_Pos) & MPU_RBAR_XN_Msk;

    mpu->RBAR = base_cfg;

    /*This 0s the lower bits of base address but they are treated as 1 */
    limit_cfg = (region_cfg->region_limit - 1) & MPU_RLAR_LIMIT_Msk;

    limit_cfg |= (region_cfg->region_attridx << MPU_RLAR_AttrIndx_Pos) &
                 MPU_RLAR_AttrIndx_Msk;

    limit_cfg |= MPU_RLAR_EN_Msk;

    mpu->RLAR = limit_cfg;

    /*Restore main MPU control*/
    mpu->CTRL = ctrl_before;

    /* Enable MPU before the next instruction */
    __DSB();
    __ISB();

    return ret_val;
}
enum mpu_armv8m_error_t_aslr mpu_armv8m_enable_aslr(
    struct mpu_armv8m_dev_t_aslr* dev, uint32_t privdef_en, uint32_t hfnmi_en) {
    /*No error checking*/

    MPU_Type* mpu = (MPU_Type*)dev->base;

    /*
     * FixMe: Set 3 pre-defined MAIR_ATTR for memory. The attributes come
     * from default memory map, need to check if fine-tune is necessary.
     *
     * MAIR0_0: Peripheral, Device-nGnRE.
     * MAIR0_1: Code, WT RA. Same attr for Outer and Inner.
     * MAIR0_2: SRAM, WBWA RA. Same attr for Outer and Inner.
     */
    mpu->MAIR0 = (MPU_ARMV8M_MAIR_ATTR_DEVICE_VAL_ASLR << MPU_MAIR0_Attr0_Pos) |
                 (MPU_ARMV8M_MAIR_ATTR_CODE_VAL_ASLR << MPU_MAIR0_Attr1_Pos) |
                 (MPU_ARMV8M_MAIR_ATTR_DATA_VAL_ASLR << MPU_MAIR0_Attr2_Pos);

    mpu->CTRL = (privdef_en ? MPU_CTRL_PRIVDEFENA_Msk : 0) |
                (hfnmi_en ? MPU_CTRL_HFNMIENA_Msk : 0);

    /*Ensure all configuration is written before enable*/

    mpu->CTRL |= MPU_CTRL_ENABLE_Msk;

    /* Enable MPU before next instruction */
    __DSB();
    __ISB();
    return MPU_ARMV8M_OK;
}

void mpu_enable_aslr() {
    region_cfg_ns_flash.region_base = ALSR_FLASH_UNEXECUTABLE_REGION_START;
    region_cfg_ns_flash.region_limit = ALSR_FLASH_UNEXECUTABLE_REGION_END;
    region_cfg_s_service1.region_base = ASLR_FLASH_SECURE_SERVICE1_REGION_START;
    region_cfg_s_service1.region_limit = ASLR_FLASH_SECURE_SERVICE1_REGION_END;

    struct mpu_armv8m_dev_t_aslr dev_mpu_s = {MPU_BASE};
    struct mpu_armv8m_dev_t_aslr dev_mpu_ns = {MPU_BASE_NS};

    mpu_armv8m_region_enable_aslr(&dev_mpu_ns, &region_cfg_ns_flash);
    mpu_armv8m_region_enable_aslr(&dev_mpu_s, &region_cfg_s_service1);
    // mpu_armv8m_region_enable_aslr(&dev_mpu_ns, &region_cfg2);
    // mpu_armv8m_region_enable_aslr(&dev_mpu_ns, &region_cfg3);
    mpu_armv8m_enable_aslr(&dev_mpu_s, PRIVILEGED_DEFAULT_ENABLE_ASLR, 0);
    mpu_armv8m_enable_aslr(&dev_mpu_ns, PRIVILEGED_DEFAULT_ENABLE_ASLR, 0);
}
