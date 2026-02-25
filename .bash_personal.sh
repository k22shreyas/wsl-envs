#Add source in .bashrc file 
# source ./.bash_personal.sh

#command line aliases
alias winfldr="cd /mnt/c/Users/shrey/win_from_wsl"

#PS1 config with git integration
parse_git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1='${debian_chroot:+($debian_chroot)}\
\[\033[37;42m\]\u@\h$\[\033[0m\]\
\[\033[37;46m\]${PWD/#$HOME/}\[\033[0m\]\
\[\033[37;45m\]$(parse_git_branch)\[\033[0m\]\
\n\[\033[1;37m\]❯ \[\033[0m\]'

export LS_COLORS="${LS_COLORS}:di=0;36:ex=1;32:fi=0;37"

#BACKUPS for future reference
<<COMMENT
1.
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

2.
parse_git_branch() {
    git symbolic-ref --short HEAD 2>/dev/null | sed 's/^/ ⎇ /'
}
PS1='${debian_chroot:+($debian_chroot)}\
\[\033[1;33m\]\u@\h\[\033[0m\] \
\[\033[1;36m\]\w\[\033[0m\]\
\[\033[1;35m\]$(parse_git_branch)\[\033[0m\] \
\[\033[1;32m\]❯\[\033[0m\] '

3.
export PS1='${debian_chroot:+($debian_chroot)}\
\[\033[1;33m\]\u@\h\[\033[0m\] \
\[\033[1;36m\]\w\[\033[0m\]\
\[\033[1;35m\]$(parse_git_branch)\[\033[0m\] \
\[\033[1;37m\]❯\[\033[0m\] '
COMMENT
