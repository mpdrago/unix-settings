#variables
export EDITOR=vim

if [ -d ~/.bash ]; then
  export GITAWAREPROMPT=~/.bash/git-aware-prompt
  source "${GITAWAREPROMPT}/main.sh"

  export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
else
  echo "Git-aware prompt not found"
  echo "https://github.com/jimeh/git-aware-prompt"
fi


JAVA_HOME=/opt/java
PATH=$JAVA_HOME/bin:$PATH

#ALIASES
alias aptsearch="apt-cache search"
alias pretendinstall="apt install -s"
alias weather="curl wttr.in"

if [ -f .bash_local ]; then
  . .bash_local
fi
