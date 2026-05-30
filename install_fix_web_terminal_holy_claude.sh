#!/bin/bash
# Petit script pour fixer tous les petits problèmes du web terminal sous Holy Claude comme les lettres accentuées ou les problèmes de touches MAC comme le pipe
# zf260530.1238
# source: 

# charge mon environnement pour github
/workspace/deploy-proxmox/env_a_zuzu.sh

# remappe la touche alt+7 sur le mac
cat << 'EOF' >> ~/.bashrc
bind '"\e7":"|"'
EOF

# permet les lettres accentuées dans le web terminal
echo 'export LANG=C.UTF-8' >> ~/.bashrc 
echo 'export LC_ALL=C.UTF-8' >> ~/.bashrc

# remappe la touche ctrl+p dans nanmo pour pouvoir faire des pages down
printf 'bind ^P "\x16" main\n' > ~/.nanorc


echo -e "

Il faut se déconnecter afin que les modfis soient prises en compte !


"


