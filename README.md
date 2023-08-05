# Silence-HP-DL380p-G8

Simple script for silencing, the server, lowering the fan speed.

After downloading the script, remeber to change the variables at the top of the script.

**Custom iLO 4 is required, check: https://github.com/kendallgoto/ilo4_unlock**



## Packets required for communication with iLO 4:
``` bash
sudo apt install -y ssh
sudo apt install -y sshpass
```

## To manually connect with iLO use:
``` bash
ssh -oHostKeyAlgorithms=ssh-rsa -oKexAlgorithms=+diffie-hellman-group14-sha1 USER@iLO_IP
```

## To manually stress the server use:
``` bash
sudo apt install -y stress
time stress --cpu $(nproc)                              # Only CPU
time stress --cpu $(nproc) --vm 4 --vm-bytes 8G         # CPU + 32GB of RAM with 4 threads (8GB each)
time stress --cpu $(nproc) --vm 4 --vm-bytes 8G --io 4  # CPU + RAM + Storage with 4 threads
```

## To manually log system temperatures use:
``` bash
sudo apt install -y lm-sensors
sensors > temp.log
```
