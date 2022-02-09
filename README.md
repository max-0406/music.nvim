# music.nvim

A plugin integrates music player into Neovim.

## Requirements

- [Neovim](https://neovim.io/) >= 0.5
- [MOC](http://moc.daper.net/) (The music player used in this plugin)

## Installation

- Install with [vim-plug](https://github.com/junegunn/vim-plug) or any package manager:

```viml
Plug 'max-0406/music.nvim'
```
- Copy MOC config files:

```bash
cd ~/your_plugin_directory/music.nvim
./install.sh
```

## Default Mappings

- In neovim:

| Mappings    | Action             |
|-------------|--------------------|
| `<Leader>o` | Open music player  |
| `<Leader>c` | Close music player |

- In music player

| Mappings     | Action                       |
|--------------|------------------------------|
| `o or ENTER` | Go                           |
| `k`          | Menu up                      |
| `j`          | Menu down                    |
| `<C-u>`      | Menu page up                 |
| `<C-d>`      | Menu page down               |
| `g`          | Menu first item              |
| `G`          | Menu last item               |
| `/`          | Mearch in menu               |
| `?`          | Help                         |
| `l`          | Seek forward                 |
| `h`          | Seek backward                |
| `p`          | Pause or Play                |
| `R`          | Toggle repeat                |
| `S`          | Toggle shuffle               |
| `a`          | Add a file to play list      |
| `d`          | Delete a file from play list |
| `V`          | Save play list               |
| `C`          | Clear play list              |

To see the full list of mappings, check out `moc_config/keymap`.
