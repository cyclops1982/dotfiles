# Dotfiles repro

This is inspired by https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/


## Getting started.

```
mkdir ~/dev
cd ~/dev
git clone https://github.com/cyclops1982/dotfiles/
alias config='git --git-dir=/home/cyclops/dev/dotfiles/.git/ --work-tree=/home/cyclops'
```

After this you can use go back to your home dir and use 'config checkout .bashrc' to restore/get .bashrc file
