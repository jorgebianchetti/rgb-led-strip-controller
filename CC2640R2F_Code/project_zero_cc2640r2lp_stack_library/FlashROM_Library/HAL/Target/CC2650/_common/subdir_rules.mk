################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
HAL/Target/CC2650/_common/mb_patch.obj: C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/hal/src/target/_common/cc26xx/mb_patch.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ti-cgt-arm_18.12.5.LTS/bin/armcl" --cmd_file="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/config/build_components.opt" --cmd_file="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/config/factory_config.opt" --cmd_file="C:/Users/PC/workspace_v10/project_zero_cc2640r2lp_stack_library/TOOLS/build_config.opt"  -mv7M3 --code_state=16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/PC/workspace_v10/project_zero_cc2640r2lp_stack_library" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/controller/cc26xx_r2/inc" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/inc" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/rom" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/common/cc26xx" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/common/cc26xx/npi/stack" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/examples/rtos/CC2640R2_LAUNCHXL/blestack/project_zero/src/stack" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/icall/inc" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/profiles/roles" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/hal/src/target" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/hal/src/inc" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/icall/src/inc" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/npi/src" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/osal/src/inc" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/services/src/aes/cc26xx" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/services/src/nv/cc26xx" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/services/src/nv" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/blestack/services/src/saddr" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/devices/cc26x0r2" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/devices/cc26x0r2/rf_patches" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source/ti/devices/cc26x0r2/inc" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/source" --include_path="C:/ti/simplelink_cc2640r2_sdk_4_30_00_08/kernel/tirtos/packages" --include_path="C:/ti/xdctools_3_51_03_28_core/packages" --include_path="C:/ti/ti-cgt-arm_18.12.5.LTS/include" --define=CC26XX --define=CC26XX_R2 --define=DeviceFamily_CC26X0R2 --define=EXT_HAL_ASSERT --define=FLASH_ROM_BUILD --define=GATT_NO_CLIENT --define=ICALL_EVENTS --define=ICALL_JT --define=ICALL_LITE --define=OSAL_CBTIMER_NUM_TASKS=1 --define=OSAL_SNV=1 --define=POWER_SAVING --define=STACK_LIBRARY --define=USE_ICALL -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="HAL/Target/CC2650/_common/$(basename $(<F)).d_raw" --obj_directory="HAL/Target/CC2650/_common" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


