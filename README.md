# Mac-Catalina-ZSH-Show-Git-Branch

Update your profile's .zshrc file (by default this is not created so if it doesnt exist create it)

Your file should be:

---

#! /bin/zsh -
git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
setopt PROMPT_SUBST
export PROMPT='%n@%m %~ $(git_branch)%# '

---

When in a git controlled folder the prompt will look something like:
USER@HOST ~/FOLDER/my-app (master) % 

