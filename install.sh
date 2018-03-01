#!/bin/bash
CONNFIG(){
UPDATE=sudo apt-get update && sudo apt-get upgrade -y
INSTLLDEP=sudo apt-get install git colordiff htop ntop
}
CLONE(){
cd
git clone https://github.com/itsdarklikehell/bash_aliases/bash_aliases
echo "All done, please source .bash_aliases in all off your consoles (or log out/reboot) to apply changes." 
mv bash_aliases .bash_aliases
source .bash_aliases
}
CONFIG
UPDATE
INSTLLDEP
CLONE
