# Dotfiles

Clone this git repository with some dotfiles an use the power of GNU Stow: a symlink farm manager.

`brew install stow`

`sudo apt install stow`

All you have to do is `cd` into your stow directory (this dotfiles repo cloned), and run commands.

`stow *` will recreate symlinks for ALL of the packages in your dir

`stow <package_name>` will recreate the symlinks for just that package

Allowed use for both mac os and linux, and shared code outside that folders like nvim.

Example: copy nvim config to rigth place from where copy this repo on local

`stow -t ~ nvim`

And remove previous symlink with: `stow -D -t ~ nvim`

When stowing your dotfiles, you must adhere to a pretty strict naming convention. You need to re-create the directory (starting with the home dir) your dotfile lives within.

[Never Lose Your Configs Again](https://typecraft.dev/tutorial/never-lose-your-configs-again)

## 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

Good custom LazyVim configuration: [LazyVim for Ambitious Developers](https://lazyvim-ambitious-devs.phillips.codes/)

### LazyExtras

#### [mini.files](https://github.com/echasnovski/mini.files)

The mini.files file manager is kind of like a Neovim-native experience of the columnar view.

- Directory of current file: `<space>fm`
- CWD: `<space>fM`

Interacting is very similar to interacting with a standard vim window: h, j, l, dd, yy,...

**Any modification will not actually be saved on the filesystem until you type the `=` key.**


#### [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)

Preview Markdown in your modern browser with synchronised scrolling and flexible configuration.

`<space>Mp`

