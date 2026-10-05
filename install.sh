#!/usr/bin/env bash
# Restores ONLY the configs (no apps/packages are installed).
# Usage: git clone <your-repo> ~/dotfiles && cd ~/dotfiles && ./install.sh
set -euo pipefail

DOTS="$(cd "$(dirname "$0")" && pwd)"
STAMP="$(date +%s)"

restore() { # src dst  (existing target is moved to *.bak-STAMP)
  if [ -e "$2" ] || [ -L "$2" ]; then mv "$2" "$2.bak-$STAMP"; fi
  mkdir -p "$(dirname "$2")"
  cp -a "$1" "$2"
}

echo "==> Restoring configs (existing ones are moved to *.bak-$STAMP)"
for p in "$DOTS"/config/*;      do [ -e "$p" ] && restore "$p" "$HOME/.config/$(basename "$p")"; done
for p in "$DOTS"/home/.[!.]*;   do [ -e "$p" ] && restore "$p" "$HOME/$(basename "$p")"; done
for p in "$DOTS"/local-share/*; do [ -e "$p" ] && restore "$p" "$HOME/.local/share/$(basename "$p")"; done
[ -d "$DOTS/Wallpapers" ] && mkdir -p ~/Pictures && rsync -a "$DOTS/Wallpapers" ~/Pictures/ || true

command -v update-desktop-database >/dev/null && update-desktop-database ~/.local/share/applications || true

echo "Done. Configs restored. Log out and back in (or reboot)."