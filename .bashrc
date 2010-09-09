# .bashrc

# User specific aliases and functions
# For sandbox MySQL; see #26395.
alias mysql=/home/mysql/bin/mysql
export MYSQL_UNIX_PORT=/home/jbarciauskas/dev/mysql/mysql.sock

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export CVS_RSH=/usr/bin/ssh
export CVSROOT=cvs.bluestatedigital.com:/home/cvs/root

PATH=$PATH:$HOME/bin:/home/php/bin/php
PHPRC="$HOME/dev/php/lib"
CVSROOT=layers:/home/cvs/root
CVS_RSH=ssh
export PATH PHPRC CVSROOT CVS_RSH
export PYTHONPATH=~/lib/python2.5/site-packages
unset USERNAME
