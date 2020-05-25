# this is a script to run to install dependencies on ubuntu for my dotfiles and such
#
# I hope to eventually roll this into the main install.sh script but for now having it be a separate thing is fine
#

# before we even get this cloned locally:
# sudo apt update && sudo apt install -y zsh git
# then once that's done we can clone:
# git clone git@github.com:kitchen/dotfiles.git ~/.dotfiles
#
# from there run this script

sudo apt update
sudo apt -y install apt-transport-https gnupg2 curl

# kubectl repo
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# docker repo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update


sudo apt -y install thefuck python3-dev python3-pip python3-setuptools kubectl direnv ripgrep tar fd-find clang emacs vim stow software-properties-common docker-ce docker-ce-cli containerd.io
