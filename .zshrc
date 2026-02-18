# =============================================================================
# POWERLEVEL10K - INSTANT PROMPT
# Deve ficar no topo. Código que requer input (senhas, [y/n]) vai ACIMA disso.
# =============================================================================
export QT_QPA_PLATFORMTHEME=qt6ct

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# =============================================================================
# OH MY ZSH
# =============================================================================
export ZSH="/usr/share/oh-my-zsh"

DISABLE_MAGIC_FUNCTIONS="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

[[ -z "${plugins[*]}" ]] && plugins=(git fzf extract)

source $ZSH/oh-my-zsh.sh


# =============================================================================
# HISTÓRICO
# =============================================================================
export HISTCONTROL=ignoreboth
export HISTORY_IGNORE="(\&|[bf]g|c|clear|history|exit|q|pwd|* --help)"
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


# =============================================================================
# VARIÁVEIS DE AMBIENTE
# =============================================================================
export FZF_BASE=/usr/share/fzf

# Cores customizadas para páginas de man via `less`
export LESS_TERMCAP_md="$(tput bold 2> /dev/null; tput setaf 2 2> /dev/null)"
export LESS_TERMCAP_me="$(tput sgr0 2> /dev/null)"


# =============================================================================
# ALIASES — SISTEMA
# =============================================================================
alias c="clear"
alias please="sudo"
alias tb="nc termbin.com 9999"

# Abrir com xdg-open (descomente se quiser)
#alias open="xdg-open"


# =============================================================================
# ALIASES — COMPILAÇÃO
# =============================================================================
alias make="make -j$(nproc)"
alias ninja="ninja -j$(nproc)"
alias n="ninja"


# =============================================================================
# ALIASES — PACMAN / ARCH
# =============================================================================
alias update="sudo pacman -Syu"
alias rmpkg="sudo pacman -Rsn"
alias cleanch="sudo pacman -Scc"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias cleanup="sudo pacman -Rsn $(pacman -Qtdq)"

# Ajuda para quem vem do Debian/Ubuntu
alias apt="man pacman"
alias apt-get="man pacman"

# Logs e histórico
alias jctl="journalctl -p 3 -xb"
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"


# =============================================================================
# PLUGINS
# =============================================================================
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh


# =============================================================================
# POWERLEVEL10K — TEMA
# Deve ficar no final.
# =============================================================================
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
