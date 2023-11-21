# code ~/.zshrc
ls -lh ~/target.txt ~/port.txt ~/domain.txt ~/myip.txt
touch ~/target.txt ~/port.txt ~/domain.txt ~/myip.txt

# Update ~/.zshrc
# vi ~/.zshrc

t=$(cat ~/target.txt)
p=$(cat ~/port.txt)
port=$p
d=$(cat ~/domain.txt)
myip=$(cat ~/myip.txt)

# CTF=HTB
CTF=THM

TRACK=_ActiveDirectory101

# BOX=Search
BOX=adcertificatetemplates

xyz='/xyz'

alias 00='code ~/.zshrc'
alias 01='code ~/.zsh_aliases'
# alias 6 see below for zsh, but bash can't use number as function's name
alias 7="cd $xyz/note/Sample/"
alias 8="cd $xyz/note/Tools-Binary"
alias 9="cd $xyz/labs/$CTF/$TRACK/$BOX"
alias 90="cd $xyz/note/"

0(){ # menu
    echo -n '\n... MENU ...\n'
    echo -n '------------\n'
    echo -n '00     code ~/.zshrc\n'
    echo -n '01     code ~/.zsh_aliases\n'
    echo -n ' 6     tmux\n'
    echo -n ' 7     cd Sample\n'
    echo -n ' 8     cd Tools-Binary\n'
    echo -n ' 9     cd CTF Box\n'
    echo -n ' ba    copy 1 file template\n'
    echo -n ' te    mkdir CTF template\n'
}

1(){ # alias private & public IP
    # hostname -I | awk '{print $1}'; curl -4 ifconfig.co
    echo "$(hostname -I | awk '{print $1}')\t\t$(date)\n$(curl -s4 ifconfig.co)\t\t$(date)"
}

6(){ # tmux main
    tmux new-session -s "$CTF" \; set -g mouse on \; \
        new-window -n 'git pull' \; \
            send-keys "clear;cd $xyz/labs/; x; keepassxc &; code /xyz/xyz.code-workspace &; brave-browser &" C-m \; \
            send-keys 'git pull' \; \
        new-window -n 'git push' \; \
            split-window -h \; select-layout even-horizontal \; \
            send-keys -t 0 "cd $xyz/l*" C-m \; \
            send-keys -t 1 "cd $xyz/n*" C-m \; \
            setw synchronize-panes on \; send-keys 'clear' C-m \; \
            send-keys 'git add . ; git status ; git commit -m newUpdate ; git push' \; \
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
            send-keys "clear;cd $xyz/labs/$CTF/$TRACK/$BOX;ls -lh" C-m \; \
        new-window -n "$BOX" \; \
            send-keys "cd $xyz/labs/$CTF/$TRACK/$BOX" C-m \; \
        select-window -t "$CTF:git pull"
}

62(){ # tmux GIT
    tmux new-session -s "GIT" \; set -g mouse on \; \
    split-window -h \; select-layout even-horizontal \; \
            send-keys -t 0 "cd $xyz/l*" C-m \; \
            send-keys -t 1 "cd $xyz/n*" C-m \; \
            setw synchronize-panes on \; send-keys 'clear' C-m \; \
            send-keys 'git add . ; git status ; git commit -m Update ; git push' \; \
}

6a(){ # tmux CTF
    tmux new-session -s "${CTF}1" \; set -g mouse on \; \
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

ba(){ # copy 1 file template
    cp $xyz/note/Template .
}

te(){ # mkdir CTF template
    cp $xyz/note/Template '2. Unauthenticated Enumeration.md'
    cp $xyz/note/Template '3. Cred 1 - .md'
    cp $xyz/note/Template '4. Shell 1 - .md'
}

# PS1='%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%F{green}%D{%d-%m-%Y %H:%M:%S}%f%F{%(#.red.blue)} ♨ %n㉿%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
# └─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '

NAMA='♨ ckurity'
PS1='%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%F{green}%D{%d-%m-%Y %H:%M:%S}%f%F{%(#.red.blue)} $NAMA%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '