function(use_driverlib project_name module_path)

  target_include_directories(${project_name} PRIVATE ${module_path})

  set(SOURCES "${module_path}/driverlib/adc.c"
  "${module_path}/driverlib/aes.c"
  "${module_path}/driverlib/can.c"
  "${module_path}/driverlib/comp.c"
  "${module_path}/driverlib/cpu.c"
  "${module_path}/driverlib/crc.c"
  "${module_path}/driverlib/des.c"
  "${module_path}/driverlib/eeprom.c"
  "${module_path}/driverlib/emac.c"
  "${module_path}/driverlib/epi.c"
  "${module_path}/driverlib/flash.c"
  "${module_path}/driverlib/fpu.c"
  "${module_path}/driverlib/gpio.c"
  "${module_path}/driverlib/hibernate.c"
  "${module_path}/driverlib/i2c.c"
  "${module_path}/driverlib/interrupt.c"
  "${module_path}/driverlib/lcd.c"
  "${module_path}/driverlib/mpu.c"
  "${module_path}/driverlib/onewire.c"
  "${module_path}/driverlib/pwm.c"
  "${module_path}/driverlib/qei.c"
  "${module_path}/driverlib/shamd5.c"
  "${module_path}/driverlib/ssi.c"
  "${module_path}/driverlib/sw_crc.c"
  "${module_path}/driverlib/sysctl.c"
  "${module_path}/driverlib/sysexc.c"
  "${module_path}/driverlib/systick.c"
  "${module_path}/driverlib/timer.c"
  "${module_path}/driverlib/uart.c"
  "${module_path}/driverlib/udma.c"
  "${module_path}/driverlib/usb.c"
  "${module_path}/driverlib/watchdog.c")
  set_source_files_properties(${SOURCES} PROPERTIES LANGUAGE CXX)

  target_sources(
    ${project_name}
    PRIVATE ${SOURCES})

endfunction()
