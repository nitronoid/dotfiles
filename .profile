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
alias clang11="clang++ -std=c++11"
alias g++11="g++ -std=c++11"
alias clang14="clang++ -std=c++14"
alias g++14="g++ -std=c++14"
alias clang17="clang++ -std=c++17"
alias g++17="g++ -std=c++17"

fast_opts="\
-Ofast \
-march=native \
-fopenmp \
-D_GLIBCXX_PARALLEL \
-frename-registers \
-funroll-loops \
"
alias g++_fast="g++17 ${fast_opts}"
alias clang_fast="clang17 ${fast_opts}"

export EDITOR="nvim"

# Rust-lang
source ~/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"

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

# tldr command colour config
export TLDR_COLOR_BLANK="white"
export TLDR_COLOR_NAME="white underline bold"
export TLDR_COLOR_DESCRIPTION="green"
export TLDR_COLOR_EXAMPLE="yellow"
export TLDR_COLOR_COMMAND="cyan"
export TLDR_COLOR_PARAMETER="white"

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  source ~/.config/exercism/exercism_completion.bash
fi

# vi mode in the shell
set -o vi

