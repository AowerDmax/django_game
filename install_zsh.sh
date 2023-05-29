#!/bin/bash

# Step 1: Install Zsh
sudo apt install zsh

# Step 2: Set Zsh as the default shell
chsh -s $(which zsh)

# Step 3: Install Oh My Zsh
./zsh/install.sh

ZSH_CUSTOM=~/.oh-my-zsh

# Step 4: Install Powerlevel10k theme
rm -rf $ZSH_CUSTOM/themes/powerlevel10k
git clone --depth=1 https://gitee.com/mengchaobbbigrui/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Step 5: Configure Zsh theme
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc

# Step 6: Install Dracula theme
# git clone https://github.com/dracula/zsh.git $ZSH_CUSTOM/themes/dracula

# Step 7: Configure Powerlevel10k theme with plugins
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# Step 8: Install zsh-autosuggestions plugin
rm -rf $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://gitee.com/synchub/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Step 9: Install zsh-syntax-highlighting plugin
rm -rf $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://gitee.com/who7708/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Step 10: Reload Zsh configuration
source ~/.zshrc
