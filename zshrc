#! /bin/zsh -
#XXparse_git_branch() {
#    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#}

git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

#git_branch() {
#  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
#    if [[ $branch == "" ]]; then
#        :
#    else
#        echo '(git: '$branch') '
#    fi
#}

setopt PROMPT_SUBST
#export PROMPT='%9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} %m%# >'
#export PROMPT='%{$(pwd|grep --color=always /)%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f '
#export PROMPT='%n@%m %~>$ '


#export PROMPT='%n@%m %~ $(parse_git_branch)%# '
export PROMPT='%n@%m %~ $(git_branch)%# '

#export PROMPT='\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ '
