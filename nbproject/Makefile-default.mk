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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=lab0/interrupt.c lab0/led.c lab0/main.c lab0/timer.c lab0/switch.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/lab0/interrupt.o ${OBJECTDIR}/lab0/led.o ${OBJECTDIR}/lab0/main.o ${OBJECTDIR}/lab0/timer.o ${OBJECTDIR}/lab0/switch.o
POSSIBLE_DEPFILES=${OBJECTDIR}/lab0/interrupt.o.d ${OBJECTDIR}/lab0/led.o.d ${OBJECTDIR}/lab0/main.o.d ${OBJECTDIR}/lab0/timer.o.d ${OBJECTDIR}/lab0/switch.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/lab0/interrupt.o ${OBJECTDIR}/lab0/led.o ${OBJECTDIR}/lab0/main.o ${OBJECTDIR}/lab0/timer.o ${OBJECTDIR}/lab0/switch.o

# Source Files
SOURCEFILES=lab0/interrupt.c lab0/led.c lab0/main.c lab0/timer.c lab0/switch.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX470F512L
MP_LINKER_FILE_OPTION=
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/lab0/interrupt.o: lab0/interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lab0" 
	@${RM} ${OBJECTDIR}/lab0/interrupt.o.d 
	@${RM} ${OBJECTDIR}/lab0/interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/lab0/interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../../Program Files (x86)/Microchip/xc32/v1.40/pic32mx/include" -MMD -MF "${OBJECTDIR}/lab0/interrupt.o.d" -o ${OBJECTDIR}/lab0/interrupt.o lab0/interrupt.c     
	
${OBJECTDIR}/lab0/led.o: lab0/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lab0" 
	@${RM} ${OBJECTDIR}/lab0/led.o.d 
	@${RM} ${OBJECTDIR}/lab0/led.o 
	@${FIXDEPS} "${OBJECTDIR}/lab0/led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../../Program Files (x86)/Microchip/xc32/v1.40/pic32mx/include" -MMD -MF "${OBJECTDIR}/lab0/led.o.d" -o ${OBJECTDIR}/lab0/led.o lab0/led.c     
	
${OBJECTDIR}/lab0/main.o: lab0/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lab0" 
	@${RM} ${OBJECTDIR}/lab0/main.o.d 
	@${RM} ${OBJECTDIR}/lab0/main.o 
	@${FIXDEPS} "${OBJECTDIR}/lab0/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../../Program Files (x86)/Microchip/xc32/v1.40/pic32mx/include" -MMD -MF "${OBJECTDIR}/lab0/main.o.d" -o ${OBJECTDIR}/lab0/main.o lab0/main.c     
	
${OBJECTDIR}/lab0/timer.o: lab0/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lab0" 
	@${RM} ${OBJECTDIR}/lab0/timer.o.d 
	@${RM} ${OBJECTDIR}/lab0/timer.o 
	@${FIXDEPS} "${OBJECTDIR}/lab0/timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../../Program Files (x86)/Microchip/xc32/v1.40/pic32mx/include" -MMD -MF "${OBJECTDIR}/lab0/timer.o.d" -o ${OBJECTDIR}/lab0/timer.o lab0/timer.c     
	
${OBJECTDIR}/lab0/switch.o: lab0/switch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lab0" 
	@${RM} ${OBJECTDIR}/lab0/switch.o.d 
	@${RM} ${OBJECTDIR}/lab0/switch.o 
	@${FIXDEPS} "${OBJECTDIR}/lab0/switch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../../Program Files (x86)/Microchip/xc32/v1.40/pic32mx/include" -MMD -MF "${OBJECTDIR}/lab0/switch.o.d" -o ${OBJECTDIR}/lab0/switch.o lab0/switch.c     
	
else
${OBJECTDIR}/lab0/interrupt.o: lab0/interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lab0" 
	@${RM} ${OBJECTDIR}/lab0/interrupt.o.d 
	@${RM} ${OBJECTDIR}/lab0/interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/lab0/interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../../Program Files (x86)/Microchip/xc32/v1.40/pic32mx/include" -MMD -MF "${OBJECTDIR}/lab0/interrupt.o.d" -o ${OBJECTDIR}/lab0/interrupt.o lab0/interrupt.c     
	
${OBJECTDIR}/lab0/led.o: lab0/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lab0" 
	@${RM} ${OBJECTDIR}/lab0/led.o.d 
	@${RM} ${OBJECTDIR}/lab0/led.o 
	@${FIXDEPS} "${OBJECTDIR}/lab0/led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../../Program Files (x86)/Microchip/xc32/v1.40/pic32mx/include" -MMD -MF "${OBJECTDIR}/lab0/led.o.d" -o ${OBJECTDIR}/lab0/led.o lab0/led.c     
	
${OBJECTDIR}/lab0/main.o: lab0/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lab0" 
	@${RM} ${OBJECTDIR}/lab0/main.o.d 
	@${RM} ${OBJECTDIR}/lab0/main.o 
	@${FIXDEPS} "${OBJECTDIR}/lab0/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../../Program Files (x86)/Microchip/xc32/v1.40/pic32mx/include" -MMD -MF "${OBJECTDIR}/lab0/main.o.d" -o ${OBJECTDIR}/lab0/main.o lab0/main.c     
	
${OBJECTDIR}/lab0/timer.o: lab0/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lab0" 
	@${RM} ${OBJECTDIR}/lab0/timer.o.d 
	@${RM} ${OBJECTDIR}/lab0/timer.o 
	@${FIXDEPS} "${OBJECTDIR}/lab0/timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../../Program Files (x86)/Microchip/xc32/v1.40/pic32mx/include" -MMD -MF "${OBJECTDIR}/lab0/timer.o.d" -o ${OBJECTDIR}/lab0/timer.o lab0/timer.c     
	
${OBJECTDIR}/lab0/switch.o: lab0/switch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lab0" 
	@${RM} ${OBJECTDIR}/lab0/switch.o.d 
	@${RM} ${OBJECTDIR}/lab0/switch.o 
	@${FIXDEPS} "${OBJECTDIR}/lab0/switch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../../Program Files (x86)/Microchip/xc32/v1.40/pic32mx/include" -MMD -MF "${OBJECTDIR}/lab0/switch.o.d" -o ${OBJECTDIR}/lab0/switch.o lab0/switch.c     
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}              -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Lab0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}            -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Lab0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
