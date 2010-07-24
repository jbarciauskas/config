# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/home/php/bin/php
PHPRC="$HOME/dev/php/lib"
CVSROOT=layers:/home/cvs/root
CVS_RSH=ssh
export LS_COLORS='di=01;35'
export PATH PHPRC CVSROOT CVS_RSH
export PYTHONPATH=~/lib/python2.5/site-packages
unset USERNAME
alias config='git --git-dir=$HOME/.config.git/ --work-tree=$HOME'
