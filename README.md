# NvDash

A customized [NvChad](https://nvchad.com)

![use](./assets/use.gif)

---

## Table of Contents

- [Install](#install)
- [CheatSheat](#cheatsheat)
  - [Commands](#commands)
    - [From plugins](#from-plugins)
    - [User defined](#user-defined)
  - [Mappings](#mappings)
- [Gallery](#gallery)

---

## Install

1. [NeoVim nightly](https://github.com/neovim/neovim/blob/master/BUILD.md#quick-start)

> Required version 0.11.4

```sh
cd $HOME/Repos
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_INSTALL_PREFIX=$HOME/Repos/neovim # If already builded run 'make distclean'
make install
sudo -s make install
```

2. [LazyGit](https://github.com/jesseduffield/lazygit)

[Install](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#binary-releases)

3. Import NvDash config

```sh
# Remove previously configured nvim folders
rm -rf ~/.cache/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/MikyStar/NvDash ~/.config/nvim/
```

4. Install LSP with Mason

```sh
# Open nvim and run
:MasonInstallAll
```

## CheatSheat

### Commands

#### From plugins

- `:Lazy`: Open plugin manager
- `:Mason`: Open LSP manager
- `:Glow`: Markdown preview
- `:Outline`: Show code outline

#### User defined

_See lua/commands.lua_

- `:CloseBuffers`: Close all buffers
- `:CloseQuickfixes`: Close quickfix list
- `:CloseOtherBuffers`: Close all buffers except current one

### Mappings

_Here are only listed a few important ones, for more see lua/mappings.lua_

- `<leader>ch`: Show cheatsheat

- `<leader><leader>s`: Hop search
- `<leader><leader>w`: Hop word

- `<leader>gg`: LazyGit _(q to exit)_
- `<leader>oo`: Toggle outline
- `<leader>ww`: Pick window

- `<leader>la`: LSP code action
- `<leader>lb`: Format doc
- `K`: LSP hover

- `<leader>su`: Undo history
- `<leader>sn`: Open notifcations

- `(in NvimTree) g?`: Help on NvimTree

## Gallery

![splashscreen](./assets/splashscreen.png)
_<center>Splashscreen</center>_

![splitted view](./assets/splitted-view.png)
_<center>Dimmed splitted view and folder navigator</center>_

![hop and outline](./assets/hop-outline.png)
_<center>Hop and Outline</center>_

![lazygit](./assets/lazygit.png)
_<center>Lazygit</center>_

![telescope](./assets/telescope.png)
_<center>Telescope</center>_

![snacks](./assets/snacks.png)
_<center>Snacks</center>_
