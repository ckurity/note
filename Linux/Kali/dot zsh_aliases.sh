alias 0='cat ~/menu'
alias 1='ping google.com'
alias 2='ping 8.8.8.8'
alias 3='echo $ip'
alias 4='ping $ip'
alias 5='echo > ~/ip.txt $1'
alias 9='cd ~/xyz/labs/htb/Sauna'
# alias 5='if [ -z $1 ]; then echo "Usage: 5 <Target IP Addr>"; else echo > ~/ip.txt $1; fi'
alias a=alias
alias b=bash
alias c=clear
alias cme=crackmapexec
alias code='/usr/share/code/code'
alias d=docker
alias da='date +%F'
alias di='docker images'
alias dp='docker ps'
# alias docker=podman
alias e=echo
alias en='echo -n'
alias eg=egrep
alias egi='egrep -i'
alias egn='egrep -n'
alias f=file
alias g=grep
alias gi='grep -i'
alias gn='grep -n'
alias gv='grep -v'
alias h=head
alias i='ip -br -c a'
alias kerbrute='~/xyz/note/Toolz/kerbrute_linux_amd64'
alias l='ls -lh'
alias la='ls -lha'
alias lo=locate
alias m=more
alias p=ping
alias p8='ping 8.8.8.8'
alias pg='ping google.com'
alias po=poweroff
alias pu="date; hostname -I | cut -d\  -f1; curl -4 ifconfig.co"
alias r=reboot
alias s='ss -antu | nl -v0'
alias sa='cd ~/xyz/note/Sample/'
alias smap='~/tools/smap_0.1.12_linux_amd64/smap'
alias sp='ss -antup | nl -v0'
alias t=tail
alias to='cd ~/xyz/note/Toolz/; ls -lh'
alias u='sudo apt update -y && sudo apt upgrade -y'
alias v='cat -n'
alias waybackurls='~/go/bin/waybackurls'
alias z=zsh

# vi ~/.zshrc

# if [ -f ~/.zsh_aliases ]; then
#     . ~/.zsh_aliases
# fi

# vi ~/.zsh_aliases