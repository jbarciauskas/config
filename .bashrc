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
CVSROOT=layers:/home/cvs/root
CVS_RSH=ssh
export PATH PHPRC CVSROOT CVS_RSH
export PYTHONPATH=~/lib/python2.5/site-packages
unset USERNAME
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '
alias config='git --git-dir=$HOME/.config.git/ --work-tree=$HOME'
alias Attach='grabssh ; screen -d -R'
alias fixssh='source $HOME/bin/fixssh'
alias ssh='fixssh; ssh'
