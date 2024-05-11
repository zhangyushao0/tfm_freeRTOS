#include "mpu_st.h"
#include "stm32l5xx.h"
#include "read_flash.h"

static struct mpu_armv8m_region_cfg_st_t region_a = {
    0x0,
    0,
    0,
    MPU_ARMV8M_MAIR_ATTR_CODE_IDX_ST,
    MPU_ARMV8M_XN_EXEC_OK,
    MPU_ARMV8M_AP_RO_PRIV_ONLY,
    MPU_ARMV8M_SH_NONE};

static struct mpu_armv8m_region_cfg_st_t region_b = {
    0x1,
    0,
    0,
    MPU_ARMV8M_MAIR_ATTR_CODE_IDX_ST,
    MPU_ARMV8M_XN_EXEC_OK,
    MPU_ARMV8M_AP_RO_PRIV_ONLY,
    MPU_ARMV8M_SH_NONE};

static struct mpu_armv8m_region_cfg_st_t region_data = {
    0x2,
    0,
    0,
    MPU_ARMV8M_MAIR_ATTR_DATA_IDX_ST,
    MPU_ARMV8M_XN_EXEC_NEVER,
    MPU_ARMV8M_AP_RW_PRIV_UNPRIV,
    MPU_ARMV8M_SH_NONE};

static struct mpu_armv8m_region_cfg_st_t region_device = {
    0x3,
    0,
    0,
    MPU_ARMV8M_MAIR_ATTR_DEVICE_IDX_ST,
    MPU_ARMV8M_XN_EXEC_NEVER,
    MPU_ARMV8M_AP_RW_PRIV_UNPRIV,
    MPU_ARMV8M_SH_NONE};

static struct mpu_armv8m_region_cfg_st_t region_table = {
    0x4,
    0,
    0,
    MPU_ARMV8M_MAIR_ATTR_DATA_IDX_ST,
    MPU_ARMV8M_XN_EXEC_NEVER,
    MPU_ARMV8M_AP_RO_PRIV_ONLY,
    MPU_ARMV8M_SH_NONE};

static struct mpu_armv8m_region_cfg_st_t region_code = {
    0x5,
    0,
    0,
    MPU_ARMV8M_MAIR_ATTR_CODE_IDX_ST,
    MPU_ARMV8M_XN_EXEC_OK,
    MPU_ARMV8M_AP_RO_PRIV_ONLY,
    MPU_ARMV8M_SH_NONE};

static struct mpu_armv8m_region_cfg_st_t region_stack = {
    0x6,
    0,
    0,
    MPU_ARMV8M_MAIR_ATTR_DATA_IDX_ST,
    MPU_ARMV8M_XN_EXEC_NEVER,
    MPU_ARMV8M_AP_RW_PRIV_ONLY,
    MPU_ARMV8M_SH_NONE};

static struct mpu_armv8m_region_cfg_st_t region_flash = {
    0x7,
    0,
    0,
    MPU_ARMV8M_MAIR_ATTR_DATA_IDX_ST,
    MPU_ARMV8M_XN_EXEC_NEVER,
    MPU_ARMV8M_AP_RO_PRIV_ONLY,
    MPU_ARMV8M_SH_NONE};

static struct mpu_armv8m_dev_st_t dev_mpu_ns = {MPU_BASE_NS};

enum mpu_armv8m_error_st_t mpu_armv8m_region_enable_st(
    struct mpu_armv8m_dev_st_t*        dev,
    struct mpu_armv8m_region_cfg_st_t* region_cfg) {
    MPU_Type* mpu = (MPU_Type*)dev->base;

    enum mpu_armv8m_error_st_t ret_val = MPU_ARMV8M_OK;

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

    limit_cfg |= (region_cfg->region_attridx << MPU_RLAR_AttrIndx_Pos) & MPU_RLAR_AttrIndx_Msk;

    limit_cfg |= MPU_RLAR_EN_Msk;

    mpu->RLAR = limit_cfg;

    /*Restore main MPU control*/
    mpu->CTRL = ctrl_before;

    /* Enable MPU before the next instruction */
    __DSB();
    __ISB();

    return ret_val;
}

enum mpu_armv8m_error_st_t mpu_armv8m_region_disable_st(
    uint32_t region_nr) {
    MPU_Type* mpu = (MPU_Type*)(dev_mpu_ns.base);

    enum mpu_armv8m_error_st_t ret_val = MPU_ARMV8M_OK;
    uint32_t                   ctrl_before;

    /*FIXME : Add complete error checking*/

    ctrl_before = mpu->CTRL;
    mpu->CTRL = 0;
    mpu->RNR = region_nr & MPU_RNR_REGION_Msk;
    mpu->RLAR &= 0xFFFFFFFE;
    /*Restore main MPU control*/
    mpu->CTRL = ctrl_before;
    return ret_val;
}

enum mpu_armv8m_error_st_t mpu_armv8m_enable_st(
    struct mpu_armv8m_dev_st_t* dev, uint32_t privdef_en, uint32_t hfnmi_en) {
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
    mpu->MAIR0 = (MPU_ARMV8M_MAIR_ATTR_DEVICE_VAL_ST << MPU_MAIR0_Attr0_Pos) | (MPU_ARMV8M_MAIR_ATTR_CODE_VAL_ST << MPU_MAIR0_Attr1_Pos) | (MPU_ARMV8M_MAIR_ATTR_DATA_VAL_ST << MPU_MAIR0_Attr2_Pos);

    mpu->CTRL = (0 << 2) | (1 << 1);

    /*Ensure all configuration is written before enable*/

    mpu->CTRL |= MPU_CTRL_ENABLE_Msk;

    /* Enable MPU before next instruction */
    __DSB();
    __ISB();
    return MPU_ARMV8M_OK;
}

uint32_t roundup(uint32_t x) {
    if (x % 0x100 == 0) return x;
    return (x / 0x100 + 1) * 0x100;
}

uint32_t rounddown(uint32_t x) {
    return x / 0x100 * 0x100;
}

void mpu_init_st(region_t a, region_t b, uint32_t code_addr, uint32_t table_addr, uint32_t stack_addr, int reset_region) {
    region_a.region_base = a.region_start;
    region_a.region_limit = a.region_start + a.region_size;
    region_b.region_base = b.region_start;
    region_b.region_limit = b.region_start + b.region_size;
    region_data.region_base = 0x20000000;
    region_data.region_limit = 0x20005000;
    region_device.region_base = 0x40000000;
    region_device.region_limit = 0x50000000;
    region_code.region_base = code_addr;
    region_code.region_limit = code_addr + 0x3000;
    region_table.region_base = table_addr,
    region_table.region_limit = table_addr + 0x2000;
    region_stack.region_base = stack_addr;
    region_stack.region_limit = stack_addr + 0x1000;
    region_flash.region_base = 0x08050000;
    region_flash.region_limit = 0x08100000;
    mpu_armv8m_enable_st(&dev_mpu_ns, 0, 0);

    mpu_armv8m_region_enable_st(&dev_mpu_ns, &region_data);
    mpu_armv8m_region_enable_st(&dev_mpu_ns, &region_device);
    mpu_armv8m_region_enable_st(&dev_mpu_ns, &region_table);
    mpu_armv8m_region_enable_st(&dev_mpu_ns, &region_code);
    mpu_armv8m_region_enable_st(&dev_mpu_ns, &region_stack);
    mpu_armv8m_region_enable_st(&dev_mpu_ns, &region_flash);

    mpu_armv8m_region_enable_st(&dev_mpu_ns, &region_a);
    mpu_armv8m_region_enable_st(&dev_mpu_ns, &region_b);
    reset_region = reset_region == 0 ? 1 : 0;
    mpu_armv8m_region_disable_st(reset_region);
}