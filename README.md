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

- Start preview: `<space>Mp`
- Stop preview: `<space>Ms`


## ZSH

Set up your development environment on **macOS** or **Linux** with Zsh, Oh My Zsh, Powerlevel10k,...

#### Install Oh My Zsh
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

#### Install Powerlevel10k theme
`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`

#### Install Zsh plugins
`git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions`

`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting` 

---

### macOS

#### Install Homebrew (if not installed)
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

#### Install dependencies
`brew install nvm` 

#### Create required directories
`mkdir -p ~/.nvm`

#### Install SDKMAN
`curl -s "https://get.sdkman.io" | bash` 

---

### linux

#### Install dependencies
`sudo apt update && sudo apt install -y zsh git curl`

#### Install Homebrew (Linuxbrew)
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

#### Add Homebrew to PATH
`echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc`

`eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"` 

#### Install NVM
`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash`

#### Install SDKMAN
`curl -s "https://get.sdkman.io" | bash` 



---


This will guide you through setting up your prompt style, colors, icons, and other appearance options.

`p10k configure`
