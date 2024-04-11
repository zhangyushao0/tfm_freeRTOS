#ifndef __MPU_H__
#define __MPU_H__

#include "stm32l562xx.h"

#define PRIVILEGED_DEFAULT_ENABLE_ST 1
#define HARDFAULT_NMI_ENABLE_ST 1

/* MAIR_ATTR */
#define MPU_ARMV8M_MAIR_ATTR_DEVICE_VAL_ST 0x04
#define MPU_ARMV8M_MAIR_ATTR_DEVICE_IDX_ST 0
#define MPU_ARMV8M_MAIR_ATTR_CODE_VAL_ST 0xAA
#define MPU_ARMV8M_MAIR_ATTR_CODE_IDX_ST 1
#define MPU_ARMV8M_MAIR_ATTR_DATA_VAL_ST 0xFF
#define MPU_ARMV8M_MAIR_ATTR_DATA_IDX_ST 2

struct mpu_armv8m_dev_st_t {
    const uint32_t base; // const
};

enum mpu_armv8m_error_st_t { MPU_ARMV8M_OK,
                             MPU_ARMV8M_ERROR };

enum mpu_armv8m_attr_exec_st_t {
    MPU_ARMV8M_XN_EXEC_OK,
    MPU_ARMV8M_XN_EXEC_NEVER
};

enum mpu_armv8m_attr_access_st_t {
    MPU_ARMV8M_AP_RW_PRIV_ONLY,
    MPU_ARMV8M_AP_RW_PRIV_UNPRIV,
    MPU_ARMV8M_AP_RO_PRIV_ONLY,
    MPU_ARMV8M_AP_RO_PRIV_UNPRIV
};

enum mpu_armv8m_attr_shared_st_t {
    MPU_ARMV8M_SH_NONE,
    MPU_ARMV8M_SH_UNUSED,
    MPU_ARMV8M_SH_OUTER,
    MPU_ARMV8M_SH_INNER
};

struct mpu_armv8m_region_cfg_st_t {
    uint32_t region_nr;
    uint32_t region_base;
    uint32_t region_limit;
    uint32_t region_attridx;

    enum mpu_armv8m_attr_exec_st_t   attr_exec;
    enum mpu_armv8m_attr_access_st_t attr_access;
    enum mpu_armv8m_attr_shared_st_t attr_sh;
};

struct mpu_armv8m_region_cfg_raw_st_t {
    uint32_t region_nr;
    uint32_t region_base;
    uint32_t region_limit;
};

// enum mpu_armv8m_error_st_t mpu_armv8m_region_disable_st(
//     uint32_t region_nr);

void mpu_init_st(uint32_t region_a_base,
                 uint32_t region_a_limit, uint32_t region_b_base, uint32_t region_b_limit, int reset_region);

#endif /* __MPU_ARMV8M_DRV_H__ */
