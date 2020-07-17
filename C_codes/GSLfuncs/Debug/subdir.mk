################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../simplegsl.c 

O_SRCS += \
../simplegsl.o 

OBJS += \
./simplegsl.o 

C_DEPS += \
./simplegsl.d 


# Each subdirectory must supply rules for building sources it contributes
simplegsl.o: ../simplegsl.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -Igsl -Igslcblas -Im -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"simplegsl.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


