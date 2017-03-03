# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{exports,path,bash_prompt,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
shopt -s cmdhist
shopt -s histappend # append to history, don't overwrite it

# Enable some Bash 4 features when possible:
for option in autocd globstar extglobs; do
	shopt -s "$option" 2> /dev/null
done

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
    source $(brew --prefix)/share/bash-completion/bash_completion
fi

LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
  . $LUNCHY_DIR/lunchy-completion.bash
fi

# other scripts
[ -f /usr/local/bin/virtualenvwrapper.sh ] && source /usr/local/bin/virtualenvwrapper.sh
#[[ -s `brew --prefix`/etc/autojump.sh ]] && source `brew --prefix`/etc/autojump.sh

#test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash
