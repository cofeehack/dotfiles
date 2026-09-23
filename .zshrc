# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="cypher"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Example aliases
alias ls='lsd --group-directories-first'
alias l='lsd --group-directories-first'
alias ll='lsd -lh --group-directories-first'
alias la='lsd -a --group-directories-first'
alias lla='lsd -lha --group-directories-first'
alias cat='bat'

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Git
alias gc="git commit -m"
alias gca="git commit -a -m"
alias gp="git push origin HEAD"
alias gpu="git pull origin"
alias gst="git status"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
alias gdiff="git diff"
alias gco="git checkout"
alias gb='git branch'
alias gba='git branch -a'
alias gadd='git add'
alias ga='git add -p'
alias gcoall='git checkout -- .'
alias gr='git remote'
alias gre='git reset'


# Docker
alias dco="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias dl="docker ps -l -q"
alias dx="docker exec -it"

#  aliases accesos rapidos
alias la=tree


#  aliases accesos rapidos
alias nano='wsh view'
#  aliases accesos carpeta
alias nano.='wsh view .'
alias tl="tldr"
alias python="python3"
alias v="nvim"
alias V="nvim"
alias her="herdr"
alias nb="neobean"


alias oo='cd "$HOME/Documents/My Vault"'
alias or='nvim "$HOME/Documents/My Vault/inbox/"*.md'
alias cda='cd "$HOME/Documents/My Vault/Owasp"'

#  Al usar burpro
alias burp="open ~/Applications/\"Burp Suite Professional.app\" > /dev/null 2>&1"

# fzf

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200'   "$@" ;;
    export|unset) fzf --preview "eval 'echo \$'{}"                          "$@" ;;
    ssh)          fzf --preview 'dig {}'                                     "$@" ;;
    *)            fzf --preview 'bat -n --color=always --line-range :500 {}' "$@" ;;
  esac
}

# thefuck alias
eval $(thefuck --alias)
eval $(thefuck --alias fk)


# Shell integrations
# Configurar los atajos de teclado y el autocompletado difuso de fzf
eval "$(fzf --zsh)"

#bindkey

alias CL='clear -x'
alias clear="clear -x"
alias cl="clear -x"



#ms
alias ms='msfconsole'
alias mvf='msfvenom'
alias mdb='msfdb'
alias yy=yazi
#nc
# pip guard: ~/bin debe ir ANTES de /opt/homebrew/bin para bloquear --break-system-packages
export PATH="$HOME/bin:/opt/homebrew/bin:/opt/homebrew/opt/netcat/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# Bug-bounty engagement scaffolding (bug-bounty-claude-skills)
source ~/.claude/scripts/hunt.sh
export PATH="$HOME/Library/Application Support/qmk/bin:$PATH"

alias sofle='cd ~/qmk_firmware \
  && qmk compile -kb sofle/rev1 -km GameTech \
  && cp sofle_rev1_GameTech.hex "$HOME/Documents/QMK/version original editable/sofle_GameTech.hex" 2>/dev/null \
  || python3 -c "import shutil, os; shutil.copy(os.path.expanduser(\"~/qmk_firmware/sofle_rev1_GameTech.hex\"), os.path.expanduser(\"~/Documents/QMK/version original editable/sofle_GameTech.hex\")); print(\"✅ Copiado correctamente\")"'


#-- YAzi Setup ---
export EDITOR="wsh edit"
function y() {
	local tmp cwd; tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd" || builtin true
	command rm -f -- "$tmp"
}

# Source/Load zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
#zinit ice depth=1; zinit light romkatv/powerlevel10k
#source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme


# ============================================
# HISTORY
# ============================================
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
# ============================================


# 1. INICIALIZAR COMPINIT PRIMERO
# --------------------------------------------
autoload -Uz compinit && compinit -C


zinit light zsh-users/zsh-completions
zinit light Aloxaf/fzf-tab

# 3. CONFIGURACIÓN DE ESTILOS (PERMITIR MENÚ Y FZF-TAB)
# --------------------------------------------------------

# Case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Activar menú desplegable para que fzf-tab pueda tomar el control
zstyle ':completion:*' menu select

# Colores e integración con eza para previsualizar cd
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'

# 5. PLUGINS VISUALES (AL FINAL ABSOLUTO)
# ---------------------------------------------
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting

# ============================================
# ZOXIDE (Al final para que 'zi' funcione perfecto)
# ============================================
eval "$(zoxide init zsh)"




alias neobean="NVIM_APPNAME=\"neobean\" nvim"
