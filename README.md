# dotfiles-local
A place to keep track of my personal dotfile configs


### Steps to move my environment to another machine

#### Install Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Clone this repo to the *home directory* on the new machine

```
git clone git@github.com:daveashworth/dotfiles-local.git
```

#### Install `zsh`

```
brew install zsh
```

#### Install `oh-my-zsh`

> [open link to repo](https://github.com/robbyrussell/oh-my-zsh)

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### Clone the thoughtbot dotfiles repo

```
git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles`
```

#### Install `rcm`

> [open link to repo](https://github.com/thoughtbot/rcm)


#### Run rcup to symlink your local dotfiles

```
env RCRC=$HOME/dotfiles/rcrc rcup`
```

