### https://github.com/refcell/dots/labels/dots • https://github.com/refcell/dots/labels/neovim https://github.com/refcell/dots/labels/catppuccin https://github.com/refcell/dots/labels/alacritty https://github.com/refcell/dots/labels/yabai https://github.com/refcell/dots/labels/sketchybar

_Refer to [BlueFly](https://github.com/refcell/bluefly) for spinning up a dotfile-rich, one-shot development environment._

[@refcell](https://github.com/refcell)'s dotfiles, configs, and tooling.

[](./static/screen1.png)

**Interface Tools**

- [neovim](https://github.com/neovim/neovim)
- [astronvim](https://github.com/AstroNvim/AstroNvim)
- [catppuccin](https://github.com/catppuccin/catppuccin)
- [raycast](https://github.com/raycast)
- [alacritty](https://github.com/alacritty/alacritty)
- [arc](https://arc.net/)
- [yabai](https://github.com/koekeishiya/yabai)
- [skhd](https://github.com/koekeishiya/skhd)
- [omz](https://github.com/ohmyzsh/ohmyzsh)
- [sketchybar](https://github.com/FelixKratz/SketchyBar)
- [Dynamic-Island-Sketchybar](https://github.com/crissNb/Dynamic-Island-Sketchybar)
- [jankyborders](https://github.com/FelixKratz/JankyBorders)

**Other Tools**

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

_Inspired by [hb](https://github.com/hbthen3rd)'s [dotfiles](https://github.com/hbthen3rd/dotfiles)._
_Inspired by [@FelixKratz](https://github.com/FelixKratz)'s [dotfiles](https://github.com/FelixKratz/dotfiles)._
_Inspired by [@clabby](https://github.com/clabby)'s [dots](https://github.com/clabby/dots)._

<a href="https://dotfyle.com/refcell/dots-confs-nvim"><img src="https://dotfyle.com/refcell/dots-confs-nvim/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/refcell/dots-confs-nvim"><img src="https://dotfyle.com/refcell/dots-confs-nvim/badges/leaderkey?style=flat" /></a>
<a href="https://dotfyle.com/refcell/dots-confs-nvim"><img src="https://dotfyle.com/refcell/dots-confs-nvim/badges/plugin-manager?style=flat" /></a>
