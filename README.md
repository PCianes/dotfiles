# Dotfiles

Clone this git repository with some dotfiles.
Use the power of GNU Stow: a symlink farm manager.

`brew install stow`

`sudo apt install stow`

All you have to do is `cd` into your stow directory (this dotfiles repo).
Run commands.

`stow *` will recreate symlinks for ALL of the packages in your dir

`stow <package_name>` will recreate the symlinks for just that package

Allowed use for both mac os and linux.

Example: copy nvim config to rigth place from where copy this repo on local

`stow -t ~ nvim`

And remove previous symlink with: `stow -D -t ~ nvim`

When stowing your dotfiles, you must adhere to a pretty strict naming convention.
Re-create the directory (starting with the home dir) your dotfile lives within.

[Never Lose Your Configs Again](https://typecraft.dev/tutorial/never-lose-your-configs-again)

## ZSH

Set up your development environment on **macOS** or **Linux**

### Install Oh My Zsh

`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### Install Powerlevel10k theme

`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`

### Install Zsh plugins

`git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions`

`git clone
https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

---

## macOS

### Install Homebrew (if not installed)

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### Install dependencies: macos

`brew install nvm`

### Create required directories

`mkdir -p ~/.nvm`

### Install SDKMAN: macos

`curl -s "https://get.sdkman.io" | bash`

---

## linux

### Install dependencies: linux

`sudo apt update && sudo apt install -y zsh git curl`

### Install Homebrew (Linuxbrew)

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### Add Homebrew to PATH

`echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc`

`eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"`

### Install NVM

`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash`

### Install SDKMAN: linux

`curl -s "https://get.sdkman.io" | bash`

---

This will guide you through setting up your prompt
style, colors, icons, and other appearance options.

`p10k configure`

## Neovim

**Neovim** is a modern, extensible, and highly configurable text editor,
designed as an improved version of Vim. It provides better performance,
built-in LSP support, and a more flexible plugin system.

### Install Neovim via Homebrew

`brew install neovim`

### Install Neovim via package manager (Debian-based)

`sudo apt update && sudo apt install -y neovim`

### Alternatively, install the latest version from AppImage (recommended)

`curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage`

`chmod u+x nvim.appimage`

`mv nvim.appimage ~/.local/bin/nvim`

---
`nvim --version`

## Zellij

**Zellij** is a terminal multiplexer that serves as an alternative to tmux.
It offers a modern interface, built-in workspace management,
and better defaults for an enhanced terminal experience.

### Install Zellij via Homebrew

`brew install zellij`

### Install Zellij via package manager (Debian-based)

`sudo apt install -y zellij`

### Alternatively, install the latest version via script

`curl -fsSL
https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
| tar xz`

`mv zellij ~/.local/bin/zellij`

---
`zellij --version`

To start Zellij

`zellij`

## 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

Good custom LazyVim configuration: [LazyVim for Ambitious Developers](https://lazyvim-ambitious-devs.phillips.codes/)

### Install ripgrep

```bash
sudo apt install ripgrep
```

For macOS, you can install it using Homebrew:

```bash
brew install ripgrep
```

### Install lazygit

[lazygit](https://github.com/jesseduffield/lazygit) is a simple terminal UI for git commands.

```bash
brew install jesseduffield/lazygit/lazygit
```

### Install a Nerd Font

To install a Nerd Font,
visit the [Nerd Fonts website](https://www.nerdfonts.com/)
and download your preferred font.
After downloading, install the font on your system.

For Linux, you can copy the font files to the `~/.fonts` directory and run:

```bash
fc-cache -fv
```

For macOS, double-click the font file and click "Install Font."

A great recommendation is **FiraCode Nerd Font**,
known for its clean design and ligature support.

## LazyExtras

### [mini.files](https://github.com/echasnovski/mini.files)

The mini.files file manager is kind of like a
Neovim-native experience of the columnar view.

- Directory of current file: `<space>fm`
- CWD: `<space>fM`

Interacting is very similar to interacting with a
standard vim window: h, j, l, dd, yy,...

**Any modification will not actually be saved
on the filesystem until you type the `=` key.**

### [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)

Preview Markdown in your modern browser
with synchronised scrolling and flexible configuration

- Start preview: `<space>Mp`
- Stop preview: `<space>Ms`

### [copilot](https://github.com/zbirenbaum/copilot.lua) & [copilot-chat](https://github.com/CopilotC-Nvim/CopilotChat.nvim)

The configuration already includes the `Copilot` and `Copilot Chat` plugins.

Copilot provides AI-powered code suggestions as you type.

Copilot Chat allows you to interact with the AI directly within Neovim.

  ```vim
  :CopilotChatOpen
```

#### Authentication for Copilot and Copilot Chat

To use `Copilot` and `Copilot Chat`, you need to authenticate with your GitHub account:

   ```vim
   :Copilot auth
   ```

##### Keyboard Shortcuts for Copilot Chat

To interact with Copilot Chat, start by pressing `g` in normal or visual mode.
This will display the available options for actions like
asking questions, requesting code explanations, or refactoring.
