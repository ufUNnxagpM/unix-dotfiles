# About
These are the dotfiles that I run on my Unix systems.
My workflow is largely centered around reducing mouse usage and comfortable ergonomics by using a tiling window manager, Colemak layout, and a [40% keyboard](https://i.redd.it/ztsh2i1iez111.jpg).
In addition, this repository also has the configs I post in the [Linux ricing community](https://www.reddit.com/r/unixporn/).

|  Type  | Application |
|--------|-------------|
|OS      | Macos       |
|Terminal| iTerm       |
|Editor  | Neovim      |
|Shell   | fish        |

## Install

```Shell
git clone --bare git@github.com:ufUNnxagpM/unix-dotfiles.git $HOME/.unix-dotfiles && \
    alias dgit='/usr/bin/git --git-dir=$HOME/.unix-dotfiles/ --work-tree=$HOME' && \
    dgit reset
```
