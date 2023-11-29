# ~/.zsh_aliases
# alias 0='cat ~/menu'
# alias 1='ping google.com'
alias 2='ping google.com'
alias 21='ping 8.8.8.8'
alias 3='echo $t'
alias 4='ping $t'
alias 5='echo > ~/target.txt $1'
# alias 5='if [ -z $1 ]; then echo "Usage: 5 <Target IP Addr>"; else echo > ~/ip.txt $1; fi'
alias a=alias
alias b=bash
alias c=clear
alias cme=crackmapexec
alias co='/usr/share/code/code'
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
alias egv='egrep -v'
alias f=file
alias g=grep
alias gi='grep -i'
alias gin='grep -in'
alias gn='grep -n'
alias gv='grep -v'
alias gp='git pull'
alias h=head
alias i='ip -br -c a'
alias kerbrute='/xyz/note/Tools-Binary/kerbrute_linux_amd64'
alias l='ls -lh'
alias la='ls -lha'
alias lt='ls -lh --full-time'
alias lo=locate
alias m=more
alias p=ping
alias p8='ping 8.8.8.8'
alias pg='ping google.com'
alias po=poweroff
alias pu="date; hostname -I | cut -d\  -f1; curl -4 ifconfig.co"
alias r=reboot
alias rustscan='docker run -it --rm --name rustscan rustscan/rustscan:2.1.1'
alias s='ss -antu | nl -v0'
alias sp='ss -antup | nl -v0'
alias sa='cd /xyz/note/Sample/'
alias si='xclip -se c -i ~/.sys;sudo id'
alias smap='~/tools/smap_0.1.12_linux_amd64/smap'
alias t=tail
alias to='cd /xyz/note/Toolz/; ls -lh'
alias u='sudo apt update -y && sudo apt upgrade -y'
alias v='cat -n'
alias waybackurls='~/go/bin/waybackurls'
# alias x='xclip -se c -i ~/.sys'
alias x="xclip -se c -i ~/.sys; echo -e '\033[2A\033[2K'"
alias z=zsh
alias z1="PS1='%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%F{green}%* (╰ ‿ ╯) %f%F{%(#.red.blue)}ckurity@box%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '"
alias z2="PS1='[%*] %B%F{blue}ckurity@box%b:%F{green}%~$ '"
alias z3="PS1='[%*] $ '"
alias z4="PS1='$ '"

# vi ~/.zshrc

# if [ -f ~/.zsh_aliases ]; then
#     . ~/.zsh_aliases
# fi

# vi ~/.zsh_aliases