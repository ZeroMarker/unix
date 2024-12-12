# https://dev.to/yogeshdev/make-your-unix-terminal-beautiful-productive-c1d

echo $0

cat /etc/shells

sudo apt update
sudo apt install zsh

chsh -s $(which zsh)

chsh -s /bin/bash

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# .zshrc
ZSH_THEME="powerlevel10k/powerlevel10k"

source ~/.zshrc

p10k configure

