# NvDash

A customized [NvChad](https://nvchad.com)

## Install

Requires NeoVim [builded from source](https://github.com/neovim/neovim/blob/master/BUILD.md#quick-start)

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
- `:Flog`: Git tree
- `:Outline`: Show code outline

### Mappings

- `<leader>ch`: Show cheatsheat
- `<leader>hs`: Hop search
- `<leader>hw`: Hop word

- `<leader>lg`: LazyGit _(Q to exit)_

- `<leader>fm`: Format doc
- `<leader>ca`: LSP code action
- `K`: LSP hover
