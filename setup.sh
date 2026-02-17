cp configs/bashrc ~/.bashrc
cp configs/tmux.conf ~/.tmux.conf

# Git
chmod +x configs/gitconfig.sh
./configs/gitconfig.sh

source ~/.bashrc
pkill tmux
