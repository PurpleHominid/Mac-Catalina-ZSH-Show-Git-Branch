#! /bin/zsh -

git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

setopt PROMPT_SUBST
export PROMPT='%n@%m %~ $(git_branch)%# '
