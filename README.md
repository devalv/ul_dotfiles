# Aleksei Devyatkin`s dotfiles

This is a repo for my Ubuntu linux dotfiles. 
Bootstrap is based on the awesome [Dotbot](https://github.com/anishathalye/dotbot).

## Installation

**Terminator** and **Fish** shell are bootstrapped automatically in case you 
have them not installed. **Snap** already should be on a host system.

```shell
git clone https://github.com/devalv/ul_dotfiles .dotfiles && cd .dotfiles && ./install
```

## Notes

### Package manager
Core aps will be installed using **apt**, others by [snap](https://snapcraft.io/docs/getting-started).

### Shell and Term
The term is [Terminator](https://terminator-gtk3.readthedocs.io/en/latest/).
The shell is [Fish](https://fishshell.com/). 
The Font is [FiraCode](https://github.com/tonsky/FiraCode).

### Shell plugins
Plugins management is powered by [oh-my-fish](https://github.com/oh-my-fish/plugin-osx).

### Editors
The default console editor is **vim**, and the default IDE is 
[PyCharm](https://www.jetbrains.com/pycharm/).

### Python
* [pyenv](https://github.com/pyenv/pyenv) with **3.10.2** as global default
* [pipenv](https://pipenv.pypa.io/en/latest/)
* [pretty-errors](https://github.com/onelivesleft/PrettyErrors/)
* [cookiecutter](https://github.com/cookiecutter/cookiecutter) 

### Other utils
- curl
- mc
- htop
- tmux
- git
- bat
- ansible-lint
- gnupg
- jsonlint
- hub
- fzf
- nmap
- pwgen
- sloccount
- siege
- telnet
- ripgrep
- yamllint
- p7zip-full
- rar
- unrar 
- wget
- scrot
- simplescreenrecorder

### Graphical utils
- dbeaver-community (snap)
- pycharm (snap)
- insomnia (snap)
- vscode (snap)

### Misc apps
- telegram (snap)
- google-chrome
- openvpn
