# 
ls -lh ~/ip.txt ~/port.txt ~/domain.txt ~/myip.txt
touch ~/ip.txt ~/port.txt ~/domain.txt ~/myip.txt

# Update ~/.zshrc
# vi ~/.zshrc

ip=$(cat ~/ip.txt)
p=$(cat ~/port.txt)
d=$(cat ~/domain.txt)
myip=$(cat ~/myip.txt)

tm(){
    tmux new-session -s 'htb' \; set -g mouse on \; \
        new-window -n 'GIT' \; split-window -h \; split-window -h \; select-layout even-horizontal \; \
            send-keys -t 0 'cd ~/xyz/l*' C-m \; send-keys -t 1 'cd ~/xyz/n*' C-m \; send-keys -t 2 'cd ~/xyz/t*' C-m \; \
            setw synchronize-panes on \; send-keys 'clear' C-m \; send-keys 'git pull' \; \
        new-window -n 'IP/VPN' \; split-window -h \; split-window -v \; \
            send-keys -t 0 'x' C-m \; \
            send-keys -t 0 'sudo ngrep' C-m \; \
            send-keys -t 1 'watch ip -br a' C-m \; \
            send-keys -t 2 'clear' C-m \; \
            send-keys -t 2 'pu' C-m \; \
            select-pane -t 0 \; \
        new-window -n 'Tools' \; \
            send-keys 'cd ~/xyz/n*/Tools-Binary' C-m \; \
        new-window -n 'Blackfield' \; \
            send-keys 'cd ~/xyz/labs/htb/Blackfield' C-m \; \
        select-window -t 'htb:IP/VPN'
}