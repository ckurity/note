# 
ls -lh ~/ip.txt ~/port.txt ~/domain.txt ~/myip.txt
touch ~/ip.txt ~/port.txt ~/domain.txt ~/myip.txt

# Update ~/.zshrc
# vi ~/.zshrc

ip=$(cat ~/ip.txt)
p=$(cat ~/port.txt)
d=$(cat ~/domain.txt)
myip=$(cat ~/myip.txt)