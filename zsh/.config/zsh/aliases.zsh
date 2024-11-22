
alias ls="gls --color=auto --group-directories-first"
alias l1="ls -F1"  #colwise version of ls
alias l="ls -lFh"
alias la="ls -lFha"

alias grep="ggrep"
alias sed="gsed"
alias awk="gawk"

alias gs="git status"
alias gl="git log --all --graph --decorate" 
alias ga="git add"
alias gc="git commit"

alias bc="bc -l"  #startup with math lib (mainly for float pt arith)

alias printpath="echo $PATH | tr ':' '\n'"

# Override vim cmd (type '\vim' to run vanilla vim)
alias vim="nvim"

alias tm="tmux"
