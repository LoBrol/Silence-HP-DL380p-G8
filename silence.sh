#!/bin/sh





TEMP=20                  # change with the value you want (server default is 35, better not lower then 10)

IP="x.x.x.x"             # change with iLO IP
USER="Administrator"     # change with iLO user
PSWD="password"          # change with iLO user password
OPT="-oHostKeyAlgorithms=ssh-rsa -oKexAlgorithms=+diffie-hellman-group14-sha1 -oStrictHostKeyChecking=no"





sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 11 off'  # Disable "HD Max" temperature sensor

sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 27 off'  # Disable all PCI-e slots temperature sensors
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 28 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 29 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 30 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 31 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 32 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 33 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 34 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 35 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 36 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 37 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 38 off'  #

sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 50 off'  # Disable all PCI-e slots auxiliary temperature sensors
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 51 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 52 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 53 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 54 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 55 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 56 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 57 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 58 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 59 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 60 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 61 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 62 off'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 63 off'  #

sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan p 0 min ${TEMP}'  # Lower all minimum fans PWM
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan p 1 min ${TEMP}'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan p 2 min ${TEMP}'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan p 3 min ${TEMP}'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan p 4 min ${TEMP}'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan p 5 min ${TEMP}'  #

sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 02 lo ${TEMP}00'  # Lower minimum fans PWM from "CPU-01" sensor to 20.00
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 03 lo ${TEMP}00'  # Lower minimum fans PWM from "CPU-02" sensor to 20.00
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 24 lo ${TEMP}00'  # Lower minimum fans PWM from "HD Controller" sensor to 20.00

sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 02 caut -10'  # Lower cautional temperature threshild for "CPU-01" (for safety reason)
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 02 crit -05'  # Lower critical temperature threshild for "CPU-01" (for safety reason)
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 03 caut -10'  # Lower cautional temperature threshild for "CPU-02" (for safety reason)
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan t 03 crit -05'  # Lower critical temperature threshild for "CPU-02" (for safety reason)





sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 01 lo ${TEMP}00'  # Lower the minimum PWM of all remaining sensors to 20.00, for extra quietness
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 04 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 05 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 06 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 07 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 08 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 09 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 10 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 11 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 12 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 13 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 14 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 15 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 16 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 17 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 18 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 19 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 20 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 21 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 22 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 23 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 24 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 25 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 26 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 39 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 40 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 41 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 42 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 43 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 44 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 45 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 46 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 47 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 48 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 49 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 64 lo ${TEMP}00'  #
sshpass -p "$PSWD" ssh ${OPT} ${USER}@${IP} 'fan pid 65 lo ${TEMP}00'  #
