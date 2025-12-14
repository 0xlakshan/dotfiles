#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

log() {
  printf "\033[1;32m[dotfiles]\033[0m %s\n" "$1"
}

backup_if_exists() {
  local target="$1"

  if [ -e "$target" ]; then
    local backup="${target}.bak.$(date +%s)"
    log "Backing up $target → $backup"
    mv "$target" "$backup"
  fi
}

log "Creating required directories"

mkdir -p \
  ~/.local/share/applications \
  ~/.config/neofetch \
  ~/.config/ghostty \
  ~/.config/lazyvim

log "Installing launch script"
backup_if_exists ~/launch.sh
cp "$DOTFILES_DIR/linux/launch.sh" ~/
chmod +x ~/launch.sh

log "Installing desktop entry"
backup_if_exists ~/.local/share/applications/launch.desktop
cp "$DOTFILES_DIR/linux/launch.desktop" ~/.local/share/applications/

log "Installing Neofetch config"
backup_if_exists ~/.config/neofetch/config.conf
backup_if_exists ~/logo.txt
cp "$DOTFILES_DIR/neofetch/config.conf" ~/.config/neofetch/
cp "$DOTFILES_DIR/neofetch/logo.txt" ~/

log "Installing Ghostty config"
backup_if_exists ~/.config/ghostty
cp -r "$DOTFILES_DIR/ghostty" ~/.config/

log "Installing LazyVim config"
backup_if_exists ~/.config/lazyvim
cp -r "$DOTFILES_DIR/lazyvim" ~/.config/

log "Done 🎉 Dotfiles installed successfully"
