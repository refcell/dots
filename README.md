### https://github.com/refcell/dots/labels/dots • https://github.com/refcell/dots/labels/neovim https://github.com/refcell/dots/labels/catppuccin https://github.com/refcell/dots/labels/alacritty https://github.com/refcell/dots/labels/yabai https://github.com/refcell/dots/labels/sketchybar

[@refcell](https://github.com/refcell)'s dotfiles, configs, and tooling. _Refer to [BlueFly](https://github.com/refcell/bluefly) for a one-shot development environment composer._

```sh
git clone https://github.com/refcell/dots && cd dots && make
```

## Screenshots

![screengrab](./static/screengrab.png)

![code](./static/code.png)

![revm](./static/revm.png)

```text
  Chip  Apple M2
 macOS  14.2 Beta (23C5041e)
Device  Macbook Air, 2023
```

## windows + ui

- [catppuccin](https://github.com/catppuccin/catppuccin)
- [omz](https://github.com/ohmyzsh/ohmyzsh)
- [neovim](https://github.com/neovim/neovim)
- [astronvim](https://github.com/AstroNvim/AstroNvim)
- [yabai](https://github.com/koekeishiya/yabai)
- [skhd](https://github.com/koekeishiya/skhd)
- [sketchybar](https://github.com/FelixKratz/SketchyBar)
- [Dynamic-Island-Sketchybar](https://github.com/crissNb/Dynamic-Island-Sketchybar)
- [jankyborders](https://github.com/FelixKratz/JankyBorders)

## applications

- [raycast](https://github.com/raycast)
- [alacritty](https://github.com/alacritty/alacritty)
- [arc](https://arc.net/)

## cli tools

- [`tmux`](https://github.com/tmux/tmux)
- [`tpm`](https://github.com/tmux-plugins/tpm)
- [`btop`](https://github.com/aristocratos/btop)
- [`bat`](https://github.com/sharkdp/bat#on-macos-or-linux-via-homebrew)
- [`fd`](https://github.com/sharkdp/fd#on-macos)
- [ripgrep (`rg`)](https://github.com/BurntSushi/ripgrep#installation)
- [`eza`](https://github.com/eza-community/eza#brew-macos)
- [`neofetch`](https://github.com/dylanaraps/neofetch/wiki/Installation#macos-homebrew)
- [pipes-sh (`pipes.sh`)](https://formulae.brew.sh/formula/pipes-sh)
- [`procs`](https://github.com/dalance/procs#homebrew)
- [Taskwarrior (`task`)](https://taskwarrior.org/download/#distributions)
- [Timewarrior (`timew`)](https://timewarrior.net/docs/install/#distributions)
- [`taskwarrior-tui`](https://kdheepak.com/taskwarrior-tui/installation/)
- [`tty-clock`](https://formulae.brew.sh/formula/tty-clock)
- [`unimatrix`](https://github.com/will8211/unimatrix): `pip3 install git+https://github.com/will8211/unimatrix.git`

**SketchyBar Setup**

Install dependencies:

```test
brew install --cask sf-symbols
brew install jq
brew install gh
brew install switchaudio-osx
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.16/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf
```

Optionally, update outdated packages after running brew commands by adding the following
bash function to your shell configuration (`.zshrc` if using `omz`).

```text
function brew() {
  command brew "$@" 

  if [[ $* =~ "upgrade" ]] || [[ $* =~ "update" ]] || [[ $* =~ "outdated" ]]; then
    sketchybar --trigger brew_update
  fi
}
```

**Credits**

[hb](https://github.com/hbthen3rd)'s sketchybar [dotfiles](https://github.com/hbthen3rd/dotfiles).

[@FelixKratz](https://github.com/FelixKratz)'s yabai + skhd [dotfiles](https://github.com/FelixKratz/dotfiles).

[@clabby](https://github.com/clabby)'s neovim [dots](https://github.com/clabby/dots).
