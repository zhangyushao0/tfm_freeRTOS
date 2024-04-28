/*
 * Copyright (c) 2017-2019, Arm Limited. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 *
 */

#ifndef __MPU_H__
#define __MPU_H__

#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

#define NS_MPU_START_ASLR 0x08040000
#define NS_MPU_END_ASLR 0x0805ffff

#define PRIVILEGED_DEFAULT_ENABLE_ASLR 1
#define HARDFAULT_NMI_ENABLE_ASLR 1

/* MAIR_ATTR */
#define MPU_ARMV8M_MAIR_ATTR_DEVICE_VAL_ASLR 0x04
#define MPU_ARMV8M_MAIR_ATTR_DEVICE_IDX_ASLR 0
#define MPU_ARMV8M_MAIR_ATTR_CODE_VAL_ASLR 0xAA
#define MPU_ARMV8M_MAIR_ATTR_CODE_IDX_ASLR 1
#define MPU_ARMV8M_MAIR_ATTR_DATA_VAL_ASLR 0xFF
#define MPU_ARMV8M_MAIR_ATTR_DATA_IDX_ASLR 2

    struct mpu_armv8m_dev_t_aslr
    {
        const uint32_t base;
    };

    enum mpu_armv8m_error_t_aslr
    {
        MPU_ARMV8M_OK,
        MPU_ARMV8M_ERROR
    };

    enum mpu_armv8m_attr_exec_t_aslr
    {
        MPU_ARMV8M_XN_EXEC_OK,
        MPU_ARMV8M_XN_EXEC_NEVER
    };

    enum mpu_armv8m_attr_access_t_aslr
    {
        MPU_ARMV8M_AP_RW_PRIV_ONLY,
        MPU_ARMV8M_AP_RW_PRIV_UNPRIV,
        MPU_ARMV8M_AP_RO_PRIV_ONLY,
        MPU_ARMV8M_AP_RO_PRIV_UNPRIV
    };

    enum mpu_armv8m_attr_shared_t_aslr
    {
        MPU_ARMV8M_SH_NONE,
        MPU_ARMV8M_SH_UNUSED,
        MPU_ARMV8M_SH_OUTER,
        MPU_ARMV8M_SH_INNER
    };

    struct mpu_armv8m_region_cfg_t_aslr
    {
        uint32_t region_nr;
        uint32_t region_base;
        uint32_t region_limit;
        uint32_t region_attridx;
        enum mpu_armv8m_attr_exec_t_aslr attr_exec;
        enum mpu_armv8m_attr_access_t_aslr attr_access;
        enum mpu_armv8m_attr_shared_t_aslr attr_sh;
    };

    struct mpu_armv8m_region_cfg_raw_t_aslr
    {
        uint32_t region_nr;
        uint32_t region_base;
        uint32_t region_limit;
    };

    /**
     * \brief Enable MPU
     *
     * \param[in] dev            MPU device \ref mpu_armv8m_dev_t
     * \param[in] privdef_en     privilege default region 1:enable 0:disable
     * \param[in] hfnmi_en       mpu for hard fault & nmi  1:enable 0:disable
     *
     * \return Error code \ref mpu_armv8m_error_t
     *
     * \note This function doesn't check if dev is NULL.
     */

    enum mpu_armv8m_error_t_aslr mpu_armv8m_enable_aslr(struct mpu_armv8m_dev_t_aslr *dev,
                                                        uint32_t privdef_en,
                                                        uint32_t hfnmi_en);
    void mpu_enable_aslr();

    /**
     * \brief Disable MPU
     *
     * \param[in] dev            MPU device \ref mpu_armv8m_dev_t
     *
     * \return Error code \ref arm_mpu_error_t
     *
     * \note This function doesn't check if dev is NULL.
     */
    enum mpu_armv8m_error_t_aslr mpu_armv8m_disable_aslr(struct mpu_armv8m_dev_t_aslr *dev);

    /**
     * \brief Disable MPU and clean all regions
     *
     * \param[in] dev            MPU device \ref mpu_armv8m_dev_t
     *
     * \return Error code \ref arm_mpu_error_t
     *
     * \note This function doesn't check if dev is NULL.
     */
    enum mpu_armv8m_error_t_aslr mpu_armv8m_clean_aslr(struct mpu_armv8m_dev_t_aslr *dev);

    /**
     * \brief Enable MPU Region
     *
     * \param[in] dev            MPU device \ref mpu_armv8m_dev_t
     * \param[in] region_cfg     MPU region config \ref mpu_armv8m_region_cfg_t
     *
     * \return Error code \ref arm_mpu_error_t
     *
     * \note This function doesn't check if dev is NULL.
     */
    enum mpu_armv8m_error_t_aslr mpu_armv8m_region_enable_aslr(
        struct mpu_armv8m_dev_t_aslr *dev,
        struct mpu_armv8m_region_cfg_t_aslr *region_cfg);

    /**
     * \brief Disable MPU Region
     *
     * \param[in] dev            MPU device \ref mpu_armv8m_dev_t
     * \param[in] region_nr            Region number
     *
     * \return Error code \ref arm_mpu_error_t
     *
     * \note This function doesn't check if dev is NULL.
     */
    enum mpu_armv8m_error_t_aslr mpu_armv8m_region_disable_aslr(
        struct mpu_armv8m_dev_t_aslr *dev,
        uint32_t region_nr);

#ifdef __cplusplus
}
#endif

#endif /* __MPU_ARMV8M_DRV_H__ */
