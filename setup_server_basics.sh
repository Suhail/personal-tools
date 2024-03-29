sudo apt install wget -y
wget https://raw.githubusercontent.com/Suhail/personal-tools/master/.vimrc
wget https://raw.githubusercontent.com/Suhail/personal-tools/master/.gitconfig
wget https://raw.githubusercontent.com/Suhail/personal-tools/master/.tmux.conf
tmux source ~/.tmux.conf
sudo apt-get install apt-file -y
sudo apt-file update -y
sudo apt-get -y upgrade
sudo apt install zsh -y
sudo apt-get install -y git
sudo apt-get install -y python-setuptools
sudo apt-get install -y build-essential
sudo apt install htop -y
sudo apt install python3-pip
sudo apt install tree
pip install --upgrade pip
sudo apt-get install -y cmake
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim && sudo update-alternatives --set editor /usr/local/bin/vim
sudo apt install ncdu
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.zshrc
