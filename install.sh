#!/bin/bash
CONNFIG(){
UPDATE=sudo apt-get update && sudo apt-get upgrade -y
INSTLLDEP=sudo apt-get install git colordiff htop ntop
}
bash <(curl -s https://raw.githubusercontent.com/itsdarklikehell/bash_aliases/master/install.sh)


CONFIG
UPDATE
