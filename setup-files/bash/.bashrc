# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Prompts
PS1='`x=$?;if test "x$x" != x0;then printf "%s1;31m%s$x%s0m%s " \[\e[ \] \[\e[ \];fi``x="$(jobs | wc -l)";if test "x$x" != x0;then printf "%s1;35m%s($x)%s0m%s " \[\e[ \] \[\e[ \];fi`\[\e[1;33m\]\h\[\e[0m\] \[\e[1;30m\]\w\[\e[0m\] \[\e[1;3`x="$(id -u)";if test "x$x" != x0;then printf 2;else printf 1;fi`m\]\$\[\e[0m\] '
PS2='\[\e[1;3`x="$(id -u)";if test "x$x" != x0;then printf 2;else printf 1;fi`m\]>\[\e[0m\] '
PS4='\[\e[1;3`x="$(id -u)";if test "x$x" != x0;then printf 2;else printf 1;fi`m\]+\[\e[0m\] '

# Aliases
alias lla='ls -lAh'

# Paths
PATH="$HOME/usr/local/bin:$PATH"
export MAKE_PATH="$HOME/usr/local/gmtk/include"

