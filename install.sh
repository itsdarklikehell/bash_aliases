#!/bin/bash
set -euo pipefail

CONFIG(){
    sudo apt-get update
    sudo apt-get upgrade -y
    sudo apt-get install -y git colordiff htop ntop
}

CLONE(){
    cd "$HOME"
    if [ -d bash_aliases ]; then
        echo "bash_aliases directory already exists. Pulling latest changes..."
        cd bash_aliases
        git pull
    else
        git clone https://github.com/itsdarklikehell/bash_aliases.git
        cd bash_aliases
    fi
    cp "$HOME/.bash_aliases" "$HOME/.bash_aliases_old" 2>/dev/null || true
    cp .bash_aliases "$HOME"
    echo "All done, please source .bash_aliases in all of your consoles (or log out/reboot) to apply changes."
}

CONFIG
CLONE
