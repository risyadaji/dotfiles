# README

<!-- TODO:
    - create function to auto symlink all items
 -->
1. Install [Oh-My-Zsh](https://ohmyz.sh/#install) and its plugin
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```bash
# plugins
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```


2. symlink syntax
```bash
ln -s <source_file> <destination_file>

ex: 
# start from $HOME
ln -s ~/dotfiles/.zshrc ~/.zshrc
```


