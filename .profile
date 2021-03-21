# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
source ~/.fzf.bash

# Terminal colours
export PS1="\[\e[31m\]\u@\h:\W$\[\e[0m\] "

# Alias common compiler options
fast_opts="\
-std=c++20 \
-Ofast \
-march=native \
-fopenmp \
-D_GLIBCXX_PARALLEL \
-frename-registers \
-funroll-loops \
"
alias g++_fast="g++ ${fast_opts}"
alias clang_fast="clang++ ${fast_opts}"

export EDITOR="nvim"

# Rust-lang
source ~/.cargo/env

# Use a modern ls
alias ls='exa'

# Alias to open files
alias xopen="xdg-open"

# Wake up screen alias
alias wake="xrandr --output eDP-1 --brightness 1"

# Bare git repo for config files
alias dotfiles="git --git-dir=${HOME}/dotfiles --work-tree=${HOME}"

# fzf command config
export FZF_DEFAULT_COMMAND="fd"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--preview='bat {} --color=always'"

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  source ~/.config/exercism/exercism_completion.bash
fi

# vi mode in the shell
set -o vi

export DISPLAY=:0
export NODE_ENV=production

export PATH="${PATH}:${HOME}/.config/coc/extensions/coc-clangd-data/install/11.0.0/clangd_11.0.0/bin"
source "$HOME/.cargo/env"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
