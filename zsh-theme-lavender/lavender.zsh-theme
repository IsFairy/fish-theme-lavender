# Lavender theme for Zsh
# Based on Fish theme lavender

# Git branch name function
function git_branch_name() {
  git symbolic-ref HEAD 2>/dev/null | sed -e 's|^refs/heads/||'
}

# Git dirty state function
function git_is_dirty() {
  git status -s --ignore-submodules=dirty 2>/dev/null
}

# Setup colors
autoload -U colors && colors
CYAN="%{$fg[cyan]%}"
YELLOW="%{$fg[yellow]%}"
RED="%{$fg[red]%}"
BLUE="%{$fg[blue]%}"
GREEN="%{$fg[green]%}"
PURPLE="%{$fg[magenta]%}"
RESET="%{$reset_color%}"

# Virtualenv display
function virtualenv_info {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    echo "%{$bg[cyan]%}%{$fg[black]%}[$(basename $VIRTUAL_ENV)]${RESET} "
  fi
}

# Function to shorten and format path
function get_pwd {
  echo "${PWD/$HOME/~}"
}

# Setup prompt components
username="${CYAN}%n${RESET}"
hostname="${BLUE}%m${RESET}"
directory="${YELLOW}$(get_pwd)${RESET}"

# Git status for prompt
function git_prompt_info() {
  local branch=$(git_branch_name)
  if [[ -n "$branch" ]]; then
    if [[ -n "$(git_is_dirty)" ]]; then
      echo " · (${YELLOW}${branch}~${RESET})"
    else
      echo " · (${GREEN}${branch}${RESET})"
    fi
  fi
}

# Set prompts
preexec() {
  # Print empty line before each command output
  print ""
}

# Main prompt
setopt prompt_subst
PROMPT='
$(virtualenv_info)${username}@${hostname}:${YELLOW}$(get_pwd)${RESET}$(git_prompt_info)
%(?.${RESET}.${RED})$ ${RESET}'

# Right prompt (currently empty, customize as needed)
RPROMPT=""

# Terminal title
precmd() {
  # Set terminal title to current directory
  print -Pn "\e]0;%~\a"
}

# Greeting (not directly applicable to Zsh, can be added to .zshrc)
# Add this line to .zshrc to use:
# echo "Welcome to Zsh with Lavender theme!"