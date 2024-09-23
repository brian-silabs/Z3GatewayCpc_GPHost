####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 15                                              #
####################################################################

BASE_SDK_PATH = /Users/brrodrig/SimplicityStudio/SDKs/gecko_sdk
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.4.3

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DUC_BUILD=1' \
 '-DEZSP_CPC=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

ASM_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DUC_BUILD=1' \
 '-DEZSP_CPC=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

INCLUDES += \
 -Iautogen \
 -Iconfig \
 -I$(COPIED_SDK_PATH)/platform/service/cli/inc \
 -I$(COPIED_SDK_PATH)/platform/service/cli/src \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/host/inc \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/printf \
 -I$(COPIED_SDK_PATH)/util/third_party/printf/inc \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/af-support \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/groups-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning \
 -I$(COPIED_SDK_PATH)/. \
 -I$(COPIED_SDK_PATH)/protocol/zigbee \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/platform/host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/include \
 -I$(COPIED_SDK_PATH)/platform/radio/mac \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(COPIED_SDK_PATH)/platform/service/token_manager/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/gp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-translation-table \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_host/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/config \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/zll \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/core \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_printf/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-simple \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/xncp-test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/include \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core

GROUP_START =
GROUP_END =

PROJECT_LIBS = \
 -lpthread \
 -lc \
 -lm \
 -lcpc

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

CXX_FLAGS += \
 -std=c++11 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

ASM_FLAGS += \

LD_FLAGS += \


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.o: $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/sl_zigbee_coexistence_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o: $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o: $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/cpc/cpc-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/cpc/cpc-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/af-support/af-support-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/af-support/af-support-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/af-support/af-support-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/af-support/af-support-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/af-support/af-support-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/af-support/af-support-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-cpc.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-cpc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-cpc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-cpc.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-cpc.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-cpc.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o: autogen/sl_cli_command_table.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_command_table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_command_table.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o

$(OUTPUT_DIR)/project/autogen/sl_cli_instances.o: autogen/sl_cli_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.o

$(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o: autogen/sl_cluster_service_gen.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cluster_service_gen.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cluster_service_gen.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o: autogen/sli_cli_hooks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sli_cli_hooks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sli_cli_hooks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o

$(OUTPUT_DIR)/project/autogen/zap-cli.o: autogen/zap-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cli.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cli.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cli.o

$(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o: autogen/zap-cluster-command-parser.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cluster-command-parser.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cluster-command-parser.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o

$(OUTPUT_DIR)/project/autogen/zap-event.o: autogen/zap-event.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-event.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-event.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-event.o

$(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o: autogen/zigbee_common_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_common_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_common_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o: autogen/zigbee_host_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_host_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_host_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o: autogen/zigbee_stack_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_stack_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_stack_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o: autogen/zigbee_zcl_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_zcl_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_zcl_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA