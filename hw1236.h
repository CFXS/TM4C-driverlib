#ifndef NAFT_HW1236_H
#define NAFT_HW1236_H

#define PART_TM4C1236H6PM
#define TARGET_IS_TM4C123_RA1

#include <driverlib/epi.h>
#include <driverlib/gpio.h>
#include <driverlib/interrupt.h>
#include <driverlib/pin_map.h>
#include <driverlib/rom.h>
#include <driverlib/ssi.h>
#include <driverlib/sysctl.h>
#include <driverlib/timer.h>
#include <driverlib/udma.h>
#include <inc/asmdefs.h>
#include <inc/hw_adc.h>
#include <inc/hw_aes.h>
#include <inc/hw_can.h>
#include <inc/hw_ccm.h>
#include <inc/hw_comp.h>
#include <inc/hw_des.h>
#include <inc/hw_eeprom.h>
#include <inc/hw_emac.h>
#include <inc/hw_epi.h>
#include <inc/hw_fan.h>
#include <inc/hw_flash.h>
#include <inc/hw_gpio.h>
#include <inc/hw_hibernate.h>
#include <inc/hw_i2c.h>
#include <inc/hw_ints.h>
#include <inc/hw_lcd.h>
#include <inc/hw_memmap.h>
#include <inc/hw_nvic.h>
#include <inc/hw_onewire.h>
#include <inc/hw_pwm.h>
#include <inc/hw_qei.h>
#include <inc/hw_shamd5.h>
#include <inc/hw_ssi.h>
#include <inc/hw_sysctl.h>
#include <inc/hw_sysexc.h>
#include <inc/hw_timer.h>
#include <inc/hw_types.h>
#include <inc/hw_uart.h>
#include <inc/hw_udma.h>
#include <inc/hw_usb.h>
#include <inc/hw_watchdog.h>

#ifdef __cplusplus

inline constexpr void DisablePeripheral(size_t periph) {
    ROM_SysCtlPeripheralDisable(periph);
}

inline constexpr void EnablePeripheral(size_t periph) {
    if (!ROM_SysCtlPeripheralReady(periph)) {
        ROM_SysCtlPeripheralDisable(periph);
        ROM_SysCtlDelay(10);
        ROM_SysCtlPeripheralEnable(periph);
        while (!ROM_SysCtlPeripheralReady(periph)) {
        }
    }
}

#endif

#endif
