Installation:

    git clone https://github.com/HaFl/personal-dotfiles.git ~/.dotfiles

Create symlinks:

    ln -s ~/.dotfiles/.bash_profile ~/
    ln -s ~/.dotfiles/.gitconfig ~/
    ln -s ~/.dotfiles/.tmux.conf ~/

Or if you're lazy:

    for dotfile in ~/.dotfiles/.*; do if [ -f $dotfile ]; then ln -s $dotfile ~/; fi; done
