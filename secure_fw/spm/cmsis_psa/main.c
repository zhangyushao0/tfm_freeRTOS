/*
 * Copyright (c) 2017-2022, Arm Limited. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 *
 */

#include "build_config_check.h"
#include "ffm/tfm_boot_data.h"
#include "fih.h"
#include "memory_symbols.h"
#include "spm.h"
#include "sys/_stdint.h"
#include "target_cfg.h"
#include "tfm_api.h"
#include "tfm_hal_isolation.h"
#include "tfm_hal_platform.h"
#include "tfm_plat_otp.h"
#include "tfm_plat_provisioning.h"
#include "tfm_spm_log.h"
#include "tfm_version.h"

#include "trampoline.h"
#include "loader.h"
#include "dwt.h"
#include "mpu_st.h"

uintptr_t spm_boundary = (uintptr_t)NULL;

static fih_int tfm_core_init(void) {
    enum tfm_plat_err_t plat_err = TFM_PLAT_ERR_SYSTEM_ERR;
    fih_int             fih_rc = FIH_FAILURE;

    /*
     * Access to any peripheral should be performed after programming
     * the necessary security components such as PPC/SAU.
     */
    FIH_CALL(tfm_hal_set_up_static_boundaries, fih_rc, &spm_boundary);
    if (fih_not_eq(fih_rc, fih_int_encode(TFM_HAL_SUCCESS))) {
        FIH_RET(fih_int_encode(TFM_ERROR_GENERIC));
    }
#ifdef TFM_FIH_PROFILE_ON
    FIH_CALL(tfm_hal_verify_static_boundaries, fih_rc);
    if (fih_not_eq(fih_rc, fih_int_encode(TFM_HAL_SUCCESS))) {
        tfm_core_panic();
    }
#endif

    FIH_CALL(tfm_hal_platform_init, fih_rc);
    if (fih_not_eq(fih_rc, fih_int_encode(TFM_HAL_SUCCESS))) {
        FIH_RET(fih_int_encode(TFM_ERROR_GENERIC));
    }

    plat_err = tfm_plat_otp_init();
    if (plat_err != TFM_PLAT_ERR_SUCCESS) {
        FIH_RET(fih_int_encode(TFM_ERROR_GENERIC));
    }

    /* Perform provisioning. */
    if (tfm_plat_provisioning_is_required()) {
        plat_err = tfm_plat_provisioning_perform();
        if (plat_err != TFM_PLAT_ERR_SUCCESS) {
            FIH_RET(fih_int_encode(TFM_ERROR_GENERIC));
        }
    } else {
        tfm_plat_provisioning_check_for_dummy_keys();
    }

    /* Configures architecture */
    tfm_arch_config_extensions();

    SPMLOG_INFMSG("\033[1;34m[Sec Thread] Secure image initializing!\033[0m\r\n");

    SPMLOG_DBGMSGVAL("TF-M isolation level is: ", TFM_LVL);

#if (CONFIG_TFM_FLOAT_ABI == 2)
    SPMLOG_INFMSG("TF-M Float ABI: Hard\r\n");
#ifdef CONFIG_TFM_LAZY_STACKING
    SPMLOG_INFMSG("Lazy stacking enabled\r\n");
#else
    SPMLOG_INFMSG("Lazy stacking disabled\r\n");
#endif
#endif

    tfm_core_validate_boot_data();

    FIH_RET(fih_int_encode(TFM_SUCCESS));
}

uint32_t vector_offset = 0;
uint32_t tramp_stack_addr = 0;
uint32_t tramp_blx_addr = 0;

int main(void) {
    fih_int fih_rc = FIH_FAILURE;

    /* set Main Stack Pointer limit */
    tfm_arch_set_msplim(SPM_BOOT_STACK_TOP);

    fih_delay_init();

    FIH_CALL(tfm_core_init, fih_rc);
    if (fih_not_eq(fih_rc, fih_int_encode(TFM_SUCCESS))) {
        tfm_core_panic();
    }

    /* All isolation should have been set up at this point */
    FIH_LABEL_CRITICAL_POINT();

    /* Print the TF-M version */
    SPMLOG_INFMSG("\033[1;34mBooting TF-M " VERSION_FULLSTR "\033[0m\r\n");

    /*
     * Prioritise secure exceptions to avoid NS being able to pre-empt
     * secure SVC or SecureFault. Do it before PSA API initialization.
     */
    tfm_arch_set_secure_exception_priorities();

#ifdef TFM_FIH_PROFILE_ON
    /* Check secure exception priority */
    FIH_CALL(tfm_arch_verify_secure_exception_priorities, fih_rc);
    if (fih_not_eq(fih_rc, FIH_SUCCESS)) {
        tfm_core_panic();
    }
#endif

    uint32_t __text_address__ = 0x8055000;
    region_t a = {0x20005000, 0};             // region a
    region_t b = {0x20010000, 0};             // region b
    region_t vector_table = {0x20015000, 0};  // vector table
    uint32_t tramp_section_addr = 0x20018000; // tramp section address
    uint32_t handler_section_addr = 0x20016000;
    tramp_stack_addr = 0x2001a000; // tramp stack address

    vector_offset = vector_table.region_start - __text_address__;                              // vector offset
    tramp_blx_addr = tramp_blx.region_start + tramp_section_addr - tramp_section.region_start; // tramp blx address

    int reset_region = loader(&a, &b, &vector_table, tramp_section_addr, handler_section_addr, __text_address__);

    // mpu_init_st(a.region_start, a.region_start + 0x4900, b.region_start, b.region_start + 0x4900, reset_region);
    // DWT_enable(a, b);

    /* Move to handler mode for further SPM initialization. */
    tfm_core_handler_mode();

    return 0;
}
