### https://github.com/refcell/dots/labels/dots • https://github.com/refcell/dots/labels/neovim https://github.com/refcell/dots/labels/catppuccin https://github.com/refcell/dots/labels/alacritty https://github.com/refcell/dots/labels/yabai https://github.com/refcell/dots/labels/sketchybar

_Refer to [BlueFly](https://github.com/refcell/bluefly) for up-to-date dotfiles._

[@refcell](https://github.com/refcell)'s dotfiles, configs, and tooling.

**Configuration**

- [neovim](https://github.com/neovim/neovim)
- [astronvim](https://github.com/AstroNvim/AstroNvim)
- [catppuccin](https://github.com/catppuccin/catppuccin)
- [raycast](https://github.com/raycast)
- [btop](https://github.com/aristocratos/btop)
- [alacritty](https://github.com/alacritty/alacritty)
- [arc](https://arc.net/)
- [yabai](https://github.com/koekeishiya/yabai)
- [skhd](https://github.com/koekeishiya/skhd)
- [omz](https://github.com/ohmyzsh/ohmyzsh)
- [tmux](https://github.com/tmux/tmux)
- [tpm](https://github.com/tmux-plugins/tpm)
- [sketchybar](https://github.com/FelixKratz/SketchyBar)
- [jankyborders](https://github.com/FelixKratz/JankyBorders)

**SketchyBar Setup**

Install dependencies:

```sh
brew install --cask sf-symbols
brew install jq
brew install gh
brew install switchaudio-osx
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.16/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf
```

Optionally, update outdated packages after running brew commands by adding the following
bash function to your shell configuration (`.zshrc` if using `omz`).

```sh
function brew() {
  command brew "$@" 

  if [[ $* =~ "upgrade" ]] || [[ $* =~ "update" ]] || [[ $* =~ "outdated" ]]; then
    sketchybar --trigger brew_update
  fi
}
```

_Inspired by [@FelixKratz]()'s [dotfiles]()._
_Inspired by [@clabby](https://github.com/clabby)'s [dots](https://github.com/clabby/dots)._

<a href="https://dotfyle.com/refcell/dots-confs-nvim"><img src="https://dotfyle.com/refcell/dots-confs-nvim/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/refcell/dots-confs-nvim"><img src="https://dotfyle.com/refcell/dots-confs-nvim/badges/leaderkey?style=flat" /></a>
<a href="https://dotfyle.com/refcell/dots-confs-nvim"><img src="https://dotfyle.com/refcell/dots-confs-nvim/badges/plugin-manager?style=flat" /></a>
