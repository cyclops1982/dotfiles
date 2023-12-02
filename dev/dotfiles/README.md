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

## WARNING
To work with this repo, you should **ALWAYS** use the `config` command. Doing anything with `git` will mess things up.
The concept is that you can run `config` in the root of your home directory. This is why 'other' useful files are in `dev/dotfiles`, even though that is the directory of the repo.

