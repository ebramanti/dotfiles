# dotfiles
A collection of dotfiles I use for my development environment.

# Installation
Before cloning this repo, [generate a new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/).

_Note_: Root necessary for some of the install script, so pay attention for password requests.

```sh
git clone git@github.com:jadengore/dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
bash install.sh
```

### Apps that must be installed manually
#### Google Chrome
Necessary to meet 1Password requirement of browser being installed in `Applications`.

#### [Airbar](https://tiivik.github.io/)
Not listed in Brew yet, used to switch between iOS and Mac for AirPods.

#### [Postico 2 (Preview)](https://eggerapps.at/postico2/)
No Brew cask for it yet, still in preview.
