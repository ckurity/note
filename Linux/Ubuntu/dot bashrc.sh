~/.bashrc

CTF=htb
TRACK=_ActiveDirectory101
BOX=Search

xyz='/xyz'

alias 0=menu0
alias 7=tmux1
alias 72=tmux2
alias 9="cd $xyz/labs/$CTF/$TRACK/$BOX"
alias 90="cd $xyz/labs/;echo git pull"

# bash can't use number as function's name, hence alias is needed
menu0(){
    echo -e "\n... MENU ..."
    echo -e "------------"
    echo -e "00   code ~/.bashrc"
    echo -e "01   code ~/.bash_aliases"
    echo -e " 6   tmux"
    echo -e " 7   cd Sample"
    echo -e " 8   cd Tools-Binary"
    echo -e " 9   cd CTF Box\n"
}

tmux1(){
    tmux new-session -s "$CTF" \; set -g mouse on \; \
        new-window -n 'git - pass' \; \
            send-keys "clear;cd $xyz/labs/;keepassxc & " C-m \; \
            send-keys 'git pull' C-m \; \
        new-window -n 'git pull' \; \
            split-window -h \; select-layout even-horizontal \; \
            send-keys -t 0 "cd $xyz/l*" C-m \; \
            send-keys -t 1 "cd $xyz/n*" C-m \; \
            setw synchronize-panes on \; send-keys 'clear' C-m \; \
            send-keys 'git pull' \; \
        new-window -n 'IP/VPN' \; \
            split-window -h \; split-window -v \; \
            send-keys -t 0 'x' C-m \; \
            send-keys -t 0 "cd $xyz/vpn; sudo ngrep" C-m \; \
            send-keys -t 1 'watch ip -br a' C-m \; \
            send-keys -t 2 'clear' C-m \; \
            send-keys -t 2 'pu' C-m \; \
            select-pane -t 0 \; \
        new-window -n 'BloodHound' \; \
            split-window -h \; \
            send-keys -t 0 'sudo neo4j console' C-m \; \
            send-keys -t 1 'bloodhound' \; \
            select-pane -t 0 \; \
        new-window -n 'Tools' \; \
            send-keys "clear;cd $xyz/note/Tools-Binary;ls" C-m \; \
        new-window -n "$BOX" \; \
            send-keys "clear;cd $xyz/labs/$CTF/$BOX;ls -lh" C-m \; \
        new-window -n "$BOX" \; \
            send-keys "cd $xyz/labs/$CTF/$BOX" C-m \; \
        select-window -t "$CTF:git pull"
}

tmux2(){
    tmux new-session -s "${CTF}1" \; set -g mouse on \; \
    new-window -n "$BOX" \; \
            send-keys "clear;cd $xyz/labs/$CTF/$BOX;ls" C-m \; \
    new-window -n "$BOX" \; \
            send-keys "clear;cd $xyz/labs/$CTF/$BOX; ls -lh" C-m \; \
    new-window -n "$BOX" \; \
            send-keys "clear;cd $xyz/labs/$CTF/$BOX" C-m \; \
    new-window -n "$BOX" \; \
            send-keys "clear;cd $xyz/labs/$CTF/$BOX" C-m \; \
    new-window -n "$BOX" \; \
            send-keys "clear;cd $xyz/labs/$CTF/$BOX" C-m \; \
    select-window -t 1
}

PS1='\d \T [\w] > '