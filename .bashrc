# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

export SSH_NAME='tmhb-?'
export EXCHANGE='?'
export PAIRS='?|?'
export PS1="[\e[1;31m\]$SSH_NAME\e[1;37m\]@\e[1;32m\]$EXCHANGE \e[1;34m\]$PAIRS\e[0m\]]$ "
