#!/usr/env/bin bash

# Install Homebrew
# Run ssh-keygen, then copy ~/.ssh/id_rsa.pub to github.com
# Run git clone git@github.com:benlindsay/my_config_files.git

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Run from my_config_files directory
for dir in zsh vim shell; do
  if [ -d $HOME/.$dir ]; then
    echo "$HOME/.$dir directory already exists. Skipping symlink creation."
    continue
  fi
  ln -s $PWD/$dir $HOME/.$dir
done

for file in zshrc vimrc condarc macbook/shell_local gitignore_global gitconfig; do
  base_name="$(basename $file)"
  if [ -f "$HOME/.$base_name" ]; then
    echo "$HOME/.$base_name file already exists. Skipping symlink creation."
    continue
  fi
  ln -s $PWD/$file $HOME/.$base_name
done

brew install \
  git \
  vim \
  pyenv \

pyenv install 3.11.0
pyenv global 3.11.0

brew install --cask \
  iterm2 \
  visual-studio-code \
