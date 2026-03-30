
# ─────────────────────────────────────────────────────────

# .zshrc - GSOUZA (Clean Arch Setup - No Oh My Zsh)

# ─────────────────────────────────────────────────────────

# ─────────────────────────────────────────

# POWERLEVEL10K INSTANT PROMPT (rápido)

# ─────────────────────────────────────────

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ─────────────────────────────────────────

# VARIÁVEIS DE AMBIENTE

# ─────────────────────────────────────────

export EDITOR="nvim"
export TERMINAL="kitty"
export QT_QPA_PLATFORMTHEME=qt6ct
export PATH="$HOME/.local/bin:$PATH"

# Histórico otimizado

HISTSIZE=5000
SAVEHIST=5000
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

# ─────────────────────────────────────────

# ALIASES ESSENCIAIS

# ─────────────────────────────────────────

alias c="clear"
alias q="exit"
alias please="sudo"

# Pacman (Arch/CachyOS)

alias update="sudo pacman -Syu"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rsn"
alias cleanup="sudo pacman -Rsn $(pacman -Qtdq 2>/dev/null)"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"

# Build otimizado

alias make="make -j$(nproc)"
alias ninja="ninja -j$(nproc)"

# Navegação rápida

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Listagem melhor

alias ls="ls --color=auto"
alias ll="ls -lah"
alias la="ls -A"

# ─────────────────────────────────────────

# COMPLETION (mais rápido)

# ─────────────────────────────────────────

autoload -Uz compinit
compinit

# ─────────────────────────────────────────

# FZF (se instalado)

# ─────────────────────────────────────────

[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

# ─────────────────────────────────────────

# PLUGINS (via pacman)

# ─────────────────────────────────────────

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# command-not-found (opcional)

[ -f /usr/share/doc/pkgfile/command-not-found.zsh ] && source /usr/share/doc/pkgfile/command-not-found.zsh

# ─────────────────────────────────────────

# POWERLEVEL10K

# ─────────────────────────────────────────

source ~/powerlevel10k/powerlevel10k.zsh-theme

# Config do tema

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ─────────────────────────────────────────

# OPÇÕES DO ZSH

# ─────────────────────────────────────────

unsetopt CORRECT
unsetopt CORRECT_ALL

setopt AUTO_CD
setopt MULTIOS
setopt PROMPT_SUBST

# ─────────────────────────────────────────

# FINAL

# ─────────────────────────────────────────

echo "" > /dev/null
