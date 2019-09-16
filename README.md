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

#### Install `zsh` (if it doesn't exist) and change shell to `zsh`
3. Install `oh-my-zsh` ([open link to repo](https://github.com/robbyrussell/oh-my-zsh))
4. `git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles`
5. Install `rcm` ([open link to repo](https://github.com/thoughtbot/rcm))
6. `env RCRC=$HOME/dotfiles/rcrc rcup`
