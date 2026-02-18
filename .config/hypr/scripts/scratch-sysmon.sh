#!/bin/bash
# Scratchpad — Monitor do Sistema (btop)
# Abre a janela se não existir, ou mostra/esconde se já estiver rodando

RUNNING=$(hyprctl clients -j | jq -r '.[] | select(.class == "scratch_sysmon") | .class')

if [ -z "$RUNNING" ]; then
  kitty --class scratch_sysmon --override initial_window_width=1280 --override initial_window_height=720 -e btop &
  sleep 0.3
fi

hyprctl dispatch togglespecialworkspace scratch_sysmon
