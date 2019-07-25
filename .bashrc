#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function exitstatus()
{
	if [[ $? == 0 ]]; then 
		printf "\e[1;32m[$?]\e[0;37m"
	else
		printf "\e[0;31m[$?]\e[0;37m"
	fi
}

PS1="$(exitstatus)\e[1;32m[\u@\h \W]\$ \e[0m"

#
# aliases
#

alias ls='ls --color=auto'
alias l='ls'
alias rs='cd ~/exia/a4/reseau'

function prs() {
	fldr=$(find $HOME/exia/a4 -type d | fzf -i --print-query --preview "ls -l {}" | tac | sed 1q) 
	[ ! -d $fldr ] && mkdir "$HOME/exia/a4/reseau/$fldr" -v && fldr="$HOME/exia/a4/reseau/$fldr"
	cd $fldr
}

function lpr() {
	cd $(ls -td -- $HOME/exia/a4/reseau/* | head -n 1)
}
