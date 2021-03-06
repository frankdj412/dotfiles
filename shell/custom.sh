# Emacs
alias e='emacsclient -t'
alias ec='emacsclient -c -q &'

if [ -n "$INSIDE_EMACS" ]; then
    export ZSH_THEME="agnoster"
    chpwd() { print -P "\033AnSiTc %d" }
    print -P "\033AnSiTu %n"
    print -P "\033AnSiTc %d"
else
    export ZSH_THEME="robbyrussell"
fi

[[ $EMACS = t ]] && unsetopt zle

## Turn on/off emacs daemon
alias ecc="emacsclient -e '(kill-emacs)'"
alias ecd="emacs --daemon"

## Daemon
export ALTERNATE_EDITOR=""
export EDITOR=emacsclient
export TERM=xterm-256color

export GTAGSLIBPATH=$HOME/.gtags/
alias virtualenv_activate="source ~/env/bin/activate"


# Server
## apache
alias apachestart="sudo apachectl start"
alias apachestop="sudo apachectl stop"
alias apacherestart="sudo apachectl restart"

## mysql
alias mysqlstart="sudo /usr/local/mysql/support-files/mysql.server start"
alias mysqlstop="sudo /usr/local/mysql/support-files/mysql.server stop"
alias mysqlrestart="sudo /usr/local/mysql/support-files/mysql.server restart"

export PATH="/usr/local/mysql/bin:$PATH"

# Others
export dyld_library_path=/usr/local/lib
export dyld_library_path=/usr/lib/system:dyld_library_path
alias netkit="java -jar /users/dj/desktop/cluster\ inference/netkit-srl-1.2.1p1/lib/netkit-1.2.1p1.jar"

# http://stackoverflow.com/questions/19961239/pelican-3-3-pelican-quickstart-error-valueerror-unknown-locale-utf-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export cc=llvm-gcc
export cxx=llvm-g++
export SVN_EDITOR="emacsclient -t"


#  Networking
## show the process that connects to the Internet
alias listen="lsof -P -i -n"

# Load zsh-autosuggestions.
source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh

# Enable autosuggestions automatically.
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init
