wget https://raw.githubusercontent.com/Suhail/personal-tools/master/.vimrc
wget https://raw.githubusercontent.com/Suhail/personal-tools/master/.gitconfig
sudo apt-get update
sudo apt-get install apt-file -y
sudo apt-file update -y
sudo apt-get -y upgrade
sudo apt install zsh -y
sudo apt-get install -y git
sudo apt-get install -y python-setuptools
sudo apt-get install -y build-essential
sudo apt install htop -y
sudo apt install -y python-pip
sudo apt install wget -y
pip install --upgrade pip
sudo apt-get install -y cmake
sudo update-alternatives --config editor
sudo apt install ncdu
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
