# NvDash

A customized [NvChad](https://nvchad.com)

## Install

1. [NeoVim nightly](https://github.com/neovim/neovim/blob/master/BUILD.md#quick-start)

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
git clone https://github.com/MikyStar/NvDash ~/.config/nvim/
```

## Added plugins

- [hop](https://github.com/smoka7/hop.nvim)
- [glow](https://github.com/ellisonleao/glow.nvim)
- [outline](https://github.com/hedyhli/outline.nvim)
- [tailwind-colorizer-cmp](https://github.com/roobert/tailwindcss-colorizer-cmp.nvim)
- [lazygit](https://github.com/kdheepak/lazygit.nvim) (needs [native command](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#ubuntu))

## CheatSheat

### Commands

- `:Glow`: Markdown preview
- `:Outline`: Show code outline

### Mappings

- `<leader>ch`: Show cheatsheat

- `<leader><leader>s`: Hop search
- `<leader><leader>w`: Hop word

- `<leader>lg`: LazyGit _(q to exit)_

- `<leader>fm`: Format doc
- `<leader>ca`: LSP code action
- `K`: LSP hover

- `(in NvimTree) g?`: Help on NvimTree
