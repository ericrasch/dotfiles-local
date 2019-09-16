# dotfiles-local
A place to keep track of my personal dotfile configs


### Steps to move my environment to another machine

#### Install Homebrew

```
> /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Add a new SSH key to Github

Generate the new key:

```
> ssh-keygen -t rsa -b 4096 -C "youremail@domain.com"
```

Start the ssh agent:

```
> eval "$(ssh-agent -s)"
```

Then add the following to your ~/.ssh/config:

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

Add the new SSH private key to the ssh-agent and store the passphrase in the
keychain:

```
> ssh-add -K ~/.ssh/id_rsa
```

Copy the ssh key to your clipboard and add to github:

```
> pbcopy < ~/.ssh/id_rsa.pub
```


#### Clone this repo to the *home directory* on the new machine

```
> git clone git@github.com:daveashworth/dotfiles-local.git
```

#### Install `zsh`

```
> brew install zsh
```

#### Install `oh-my-zsh`

> [open link to repo](https://github.com/robbyrussell/oh-my-zsh)

```
> sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### Clone the thoughtbot dotfiles repo

```
> git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles`
```

#### Install `rcm`

> [open link to repo](https://github.com/thoughtbot/rcm)

```
> brew tap thoughtbot/formulae
> brew install rcm
```


#### Run rcup to symlink your local dotfiles

```
> env RCRC=$HOME/dotfiles/rcrc rcup`
```

#### Import the iTerm preferences and color theme

Go to `Preferences > General > Preferences` and check "Load preferences from a
custom folder or URL. Set the folder (or url) where you want to load from.

This should be the exported file here: [https://github.com/daveashworth/dotfiles-local/blob/master/iterm/com.googlecode.iterm2.plist](Preferences file)

For colors, go to `Preferences > Profiles > Colors` and click on the "Color
Presets..." dropdown. Choose import and pick the exported color file here:
[https://github.com/daveashworth/dotfiles-local/blob/master/iterm/duotone-dark-space.itermcolors](Color
theme)

