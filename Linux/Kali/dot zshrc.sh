# code ~/.zshrc
ls -lh ~/ip.txt ~/port.txt ~/domain.txt ~/myip.txt
touch ~/ip.txt ~/port.txt ~/domain.txt ~/myip.txt

# Update ~/.zshrc
# vi ~/.zshrc

ip=$(cat ~/ip.txt)
p=$(cat ~/port.txt)
d=$(cat ~/domain.txt)
myip=$(cat ~/myip.txt)

CTF=htb
TRACK=_ActiveDirectory101
BOX=Active

alias 00='code ~/.zshrc'
alias 01='code ~/.zsh_aliases'
# alias 6 see below for zsh, but bash can't use number as function's name
alias 7='cd ~/xyz/note/Sample/'
alias 8='cd ~/xyz/note/Tools-Binary'
alias 9="cd ~/xyz/labs/$CTF/$TRACK/$BOX"
alias 90='cd ~/xyz/note/'

0(){
    echo -n '\n... MENU ...\n'
    echo -n '------------\n'
    echo -n '00   code ~/.zshrc\n'
    echo -n '01   code ~/.zsh_aliases\n'
    echo -n ' 6   tmux\n'
    echo -n ' 7   cd Sample\n'
    echo -n ' 8   cd Tools-Binary\n'
    echo -n ' 9   cd CTF Box\n'
}

1(){
    hostname -I | awk '{print $1}'; curl ifconfig.me
}

7(){
    tmux new-session -s "$CTF" \; set -g mouse on \; \
        new-window -n 'git pull' \; \
            send-keys 'clear;cd ~/xyz/labs/; x; keepassxc &' C-m \; \
            send-keys 'git pull' \; \
        new-window -n 'git push' \; \
            split-window -h \; select-layout even-horizontal \; \
            send-keys -t 0 'cd ~/xyz/l*' C-m \; \
            send-keys -t 1 'cd ~/xyz/n*' C-m \; \
            setw synchronize-panes on \; send-keys 'clear' C-m \; \
            send-keys 'git add . ; git status ; git commit -m newUpdate ; git push' \; \
        new-window -n 'IP/VPN' \; \
            split-window -h \; split-window -v \; \
            send-keys -t 0 'x' C-m \; \
            send-keys -t 0 'cd ~/vpn; sudo ngrep' C-m \; \
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
            send-keys 'clear;cd ~/xyz/note/Tools-Binary;ls' C-m \; \
        new-window -n "$BOX" \; \
            send-keys "clear;cd ~/xyz/labs/$CTF/$BOX;ls -lh" C-m \; \
        new-window -n "$BOX" \; \
            send-keys "cd ~/xyz/labs/$CTF/$BOX" C-m \; \
        select-window -t "$CTF:git pull"
}

7a(){
    tmux new-session -s "${CTF}1" \; set -g mouse on \; \
    new-window -n "$BOX" \; \
            send-keys "clear;cd ~/xyz/labs/$CTF/$BOX;ls" C-m \; \
    new-window -n "$BOX" \; \
            send-keys "clear;cd ~/xyz/labs/$CTF/$BOX; ls -lh" C-m \; \
    new-window -n "$BOX" \; \
            send-keys "clear;cd ~/xyz/labs/$CTF/$BOX" C-m \; \
    new-window -n "$BOX" \; \
            send-keys "clear;cd ~/xyz/labs/$CTF/$BOX" C-m \; \
    new-window -n "$BOX" \; \
            send-keys "clear;cd ~/xyz/labs/$CTF/$BOX" C-m \; \
    select-window -t 1
}

te(){
    cp ~/xyz/note/Template '2.1 Enumeration without users.md'
    cp ~/xyz/note/Template '2.2 Users found.md'
    cp ~/xyz/note/Template '2.3 Enumeration with users.md'
    cp ~/xyz/note/Template '3. Initial Access.md'
    cp ~/xyz/note/Template '4. Cred 1 - .md'
    cp ~/xyz/note/Template '5. Shell 1 - .md'
}