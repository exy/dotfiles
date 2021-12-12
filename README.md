# ⚙️ eXy's Dotfiles

My base settings for when I start in a new environment.

## Requirements

Set zsh as your default shell:

```bash
sudo chsh -s $(which zsh)
```

## Setting up your Mac

- Update macOS to the latest version with the App Store;
- Install Xcode from the App Store, open it and accept the license agreement;

## Install

- Clone onto your machine:

```bash
git clone git://github.com/exy/dotfiles.git ~/.dotfiles
```

- Install the dotfiles:

```bash
sh ~/.dotfiles/install.sh
```

## fzf

To enable the FZF in command line you need to follow [this guide](https://github.com/junegunn/fzf#installation).

_Note: It's already added to the .bashrc just need to install the package_

### After Install

Restart your computer and enjoy your new configuration. ✌🏻

## Generate the SSH Keys

It's required to generate in every machine you start.

- Go to your $HOME with `cd ~`;
- Generate the new key `ssh-keygen`;

## Troubleshoot

### Homebrew

If you get any permissions problems when trying to run `brew` scripts, try to give the following permissions to your current user:
```bash
$ sudo chown -R $(whoami):admin /usr/local && sudo chmod -R g+rwx /usr/local
```

## Author

| [![eXy](https://avatars.githubusercontent.com/u/435362?v=4&s=120)](https://github.com/eXy) |
| ------------------------------------------------------------------------------------------ |
| [eXy](https://exy.dev)                                                                     |

## Inspiration

- [Helder B. Berto](https://github.com/helderburato/dotfiles);

## License

[MIT License](LICENSE) © eXy
