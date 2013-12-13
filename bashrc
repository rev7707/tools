source ~/.bash_git

GREEN="\[\e[0;32m\]"
BLUE="\[\e[0;34m\]"
END="\[\e[m\]"
GIT_BR_TAG='$(__git_ps1)'
PS1="${GREEN}\w${END}${GIT_BR_TAG}${BLUE}$ ${END}"
