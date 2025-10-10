#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/esme-training-mcu.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/esme-training-mcu.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/main.c src/DRIVERS/LCD/Core/LCD.c src/HARDWARE/ADC/Core/ADC.c src/HARDWARE/CLOCK/Core/CLOCK.c src/HARDWARE/EUSART/EUSART.c src/HARDWARE/I2CM/I2CM.c src/HARDWARE/ISR/ISR.c src/HARDWARE/TIMER/TIMER.c src/TOOLS/Common/Core/Common.c src/TOOLS/Common/Port/Common_pt.c src/DRIVERS/LCD/Conf/LCD_cfg.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/main.p1 ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1 ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1 ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1 ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1 ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1 ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1 ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1 ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1 ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1 ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/src/main.p1.d ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1.d ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1.d ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1.d ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1.d ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1.d ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1.d ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1.d ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1.d ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1.d ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/main.p1 ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1 ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1 ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1 ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1 ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1 ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1 ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1 ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1 ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1 ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1

# Source Files
SOURCEFILES=src/main.c src/DRIVERS/LCD/Core/LCD.c src/HARDWARE/ADC/Core/ADC.c src/HARDWARE/CLOCK/Core/CLOCK.c src/HARDWARE/EUSART/EUSART.c src/HARDWARE/I2CM/I2CM.c src/HARDWARE/ISR/ISR.c src/HARDWARE/TIMER/TIMER.c src/TOOLS/Common/Core/Common.c src/TOOLS/Common/Port/Common_pt.c src/DRIVERS/LCD/Conf/LCD_cfg.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/esme-training-mcu.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F47Q10
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/main.p1: src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.p1.d 
	@${RM} ${OBJECTDIR}/src/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/main.p1 src/main.c 
	@-${MV} ${OBJECTDIR}/src/main.d ${OBJECTDIR}/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1: src/DRIVERS/LCD/Core/LCD.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/DRIVERS/LCD/Core" 
	@${RM} ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1.d 
	@${RM} ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1 src/DRIVERS/LCD/Core/LCD.c 
	@-${MV} ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.d ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1: src/HARDWARE/ADC/Core/ADC.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/ADC/Core" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1 src/HARDWARE/ADC/Core/ADC.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.d ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1: src/HARDWARE/CLOCK/Core/CLOCK.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/CLOCK/Core" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1 src/HARDWARE/CLOCK/Core/CLOCK.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.d ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1: src/HARDWARE/EUSART/EUSART.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/EUSART" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1 src/HARDWARE/EUSART/EUSART.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.d ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1: src/HARDWARE/I2CM/I2CM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/I2CM" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1 src/HARDWARE/I2CM/I2CM.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.d ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1: src/HARDWARE/ISR/ISR.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/ISR" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1 src/HARDWARE/ISR/ISR.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/ISR/ISR.d ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1: src/HARDWARE/TIMER/TIMER.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/TIMER" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1 src/HARDWARE/TIMER/TIMER.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.d ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1: src/TOOLS/Common/Core/Common.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/TOOLS/Common/Core" 
	@${RM} ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1.d 
	@${RM} ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1 src/TOOLS/Common/Core/Common.c 
	@-${MV} ${OBJECTDIR}/src/TOOLS/Common/Core/Common.d ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1: src/TOOLS/Common/Port/Common_pt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/TOOLS/Common/Port" 
	@${RM} ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1.d 
	@${RM} ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1 src/TOOLS/Common/Port/Common_pt.c 
	@-${MV} ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.d ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1: src/DRIVERS/LCD/Conf/LCD_cfg.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/DRIVERS/LCD/Conf" 
	@${RM} ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1.d 
	@${RM} ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1 src/DRIVERS/LCD/Conf/LCD_cfg.c 
	@-${MV} ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.d ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/src/main.p1: src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.p1.d 
	@${RM} ${OBJECTDIR}/src/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/main.p1 src/main.c 
	@-${MV} ${OBJECTDIR}/src/main.d ${OBJECTDIR}/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1: src/DRIVERS/LCD/Core/LCD.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/DRIVERS/LCD/Core" 
	@${RM} ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1.d 
	@${RM} ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1 src/DRIVERS/LCD/Core/LCD.c 
	@-${MV} ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.d ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/DRIVERS/LCD/Core/LCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1: src/HARDWARE/ADC/Core/ADC.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/ADC/Core" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1 src/HARDWARE/ADC/Core/ADC.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.d ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/ADC/Core/ADC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1: src/HARDWARE/CLOCK/Core/CLOCK.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/CLOCK/Core" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1 src/HARDWARE/CLOCK/Core/CLOCK.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.d ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/CLOCK/Core/CLOCK.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1: src/HARDWARE/EUSART/EUSART.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/EUSART" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1 src/HARDWARE/EUSART/EUSART.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.d ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/EUSART/EUSART.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1: src/HARDWARE/I2CM/I2CM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/I2CM" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1 src/HARDWARE/I2CM/I2CM.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.d ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/I2CM/I2CM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1: src/HARDWARE/ISR/ISR.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/ISR" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1 src/HARDWARE/ISR/ISR.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/ISR/ISR.d ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/ISR/ISR.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1: src/HARDWARE/TIMER/TIMER.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/HARDWARE/TIMER" 
	@${RM} ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1.d 
	@${RM} ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1 src/HARDWARE/TIMER/TIMER.c 
	@-${MV} ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.d ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/HARDWARE/TIMER/TIMER.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1: src/TOOLS/Common/Core/Common.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/TOOLS/Common/Core" 
	@${RM} ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1.d 
	@${RM} ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1 src/TOOLS/Common/Core/Common.c 
	@-${MV} ${OBJECTDIR}/src/TOOLS/Common/Core/Common.d ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/TOOLS/Common/Core/Common.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1: src/TOOLS/Common/Port/Common_pt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/TOOLS/Common/Port" 
	@${RM} ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1.d 
	@${RM} ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1 src/TOOLS/Common/Port/Common_pt.c 
	@-${MV} ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.d ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/TOOLS/Common/Port/Common_pt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1: src/DRIVERS/LCD/Conf/LCD_cfg.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/DRIVERS/LCD/Conf" 
	@${RM} ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1.d 
	@${RM} ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1 src/DRIVERS/LCD/Conf/LCD_cfg.c 
	@-${MV} ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.d ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/DRIVERS/LCD/Conf/LCD_cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/esme-training-mcu.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/esme-training-mcu.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/esme-training-mcu.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/esme-training-mcu.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/esme-training-mcu.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/esme-training-mcu.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -Og -maddrqual=ignore -xassembler-with-cpp -I"src/DRIVERS/LCD/Conf" -I"src/DRIVERS/LCD/Core" -I"src/HARDWARE/ADC/Conf" -I"src/HARDWARE/ADC/Core" -I"src/HARDWARE/CLOCK/Conf" -I"src/HARDWARE/CLOCK/Core" -I"src/HARDWARE/EUSART" -I"src/HARDWARE/I2CM" -I"src/HARDWARE/ISR" -I"src/HARDWARE/TIMER" -I"src/TOOLS/Common/Conf" -I"src/TOOLS/Common/Core" -I"src/TOOLS/Common/Port" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/esme-training-mcu.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
