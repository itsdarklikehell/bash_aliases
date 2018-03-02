#!/bin/bash
CONFIG(){
UPDATE="sudo apt-get update && sudo apt-get upgrade -y"
INSTLLDEP="sudo apt-get install git colordiff htop ntop"
}
CLONE(){
cd
git clone https://github.com/itsdarklikehell/bash_aliases
cd bash_aliases
cp $HOME/.bash_aliases $HOME/.bash_aliases_old
cp .bash_aliases $HOM/.bash_aliases
echo "All done, please source .bash_aliases in all off your consoles (or log out/reboot) to apply changes." 
source $HOME/.bash_aliases
}
CONFIG
UPDATE
INSTLLDEP
CLONE
