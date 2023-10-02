~/.bashrc

CTF=htb
TRACK=_ActiveDirectory101
BOX=Search

alias 0=menu0
alias 7=tmux1
alias 72=tmux2
alias 9="cd ~/xyz/labs/$CTF/$TRACK/$BOX"
alias 90='cd ~/xyz/labs/;echo git pull'

# bash can't use number as function's name, hence alias is needed
menu0(){
    echo -e '\n... MENU ...'
    echo -e '------------'
    echo -e '00   code ~/.bashrc'
    echo -e '01   code ~/.bash_aliases'
    echo -e ' 6   tmux'
    echo -e ' 7   cd Sample'
    echo -e ' 8   cd Tools-Binary'
    echo -e ' 9   cd CTF Box\n'
}