
#sanity check
echo setting up codespace dotfiles...
echo setting up codespace dotfiles > /var/tmp/dotfilesetup
date >> /var/tmp/dotfilesetup

#install spacevim
#curl -sLf https://spacevim.org/install.sh | bash

#emacs
sudo apt-get install software-properties-common

sudo add-apt-repository ppa:kelleyk/emacs -y
sudo apt update

# If you want, you can install the text-only user interface via
#sudo apt install -y emacs-nox
sudo apt install -y emacs27
#sudo apt install -y emacs27-common

echo [user] >> ~/.gitconfig
echo '        email = pault-tech@github.com' >> ~/.gitconfig
echo '        name = Paul T' >> ~/.gitconfig

#LANG is required for spacemacs home screen, else the logo is question marks
echo chmod 700 /tmp/emacs1000 >> ~/emacs.sh
echo export LANG=en_US.UTF-8 >> ~/emacs.sh
echo TERM=xterm-256color emacs -l ~/custom.el >> ~/emacs.sh #require for gnu screen
chmod +x ~/emacs.sh

chmod 700 /tmp/emacs1000
ls -l /tmp/emacs*

# setup spacemacs
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d

#gnu screen
sudo apt install -y screen


#clone other GH repos
#NOTE: requires update to devcontainer.json https://github.com/orgs/community/discussions/36228
# mkdir ~/gh
# cd ~/gh
cd /workspaces
git clone https://github.com/pault-tech/dotfiles.git
git clone https://github.com/pault-tech/dotfiles-spacemacs.git
git clone https://github.com/pault-tech/kafka-k8s.git
#
git clone https://github.com/localstack/localstack-pro-samples.git
git clone https://github.com/mrwormhole/hotdog-localstack-PoC.git
# git clone https://github.com/lombardo-chcg/kafka-local-stack.git

#NOTE: ssh protol not supported...
# git clone git@github.com:pault-tech/kafka-k8s-localstack.git
# git clone git@github.com:pault-tech/b2-demo.git

cp ~/dotfiles-spacemacs/.spacemacs ~/
