#!/bin/bash

set -euo pipefail

# Logging
LOG_FILE="${LOG_FILE:-/tmp/bash_aliases-install.log}"
log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG_FILE"; }

# DRY_RUN guard
DRY_RUN="${DRY_RUN:-}"
maybe_mutate() {
  if [ -n "$DRY_RUN" ]; then
    log "  [DRY-RUN] Would: $*"
    return 0
  fi
  "$@"
}
CONFIG(){
UPDATE="sudo apt-get update && sudo apt-get upgrade -y"
export UPDATE
INSTLLDEP="sudo apt-get install git colordiff htop ntop"
export INSTLLDEP
}
CLONE(){
cd || exit
git clone https://github.com/itsdarklikehell/bash_aliases
cd bash_aliases || exit
cp $HOME/.bash_aliases $HOME/.bash_aliases_old
cp .bash_aliases $HOME
echo "All done, please source .bash_aliases in all off your consoles (or log out/reboot) to apply changes." 
source $HOME/.bash_aliases
}
CONFIG
UPDATE
INSTLLDEP
CLONE
