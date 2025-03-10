# suppish for macOS full

is fast & simple installer for some cool things that i use

### Run it!

```zsh
curl -sSL https://suppish.fynjirby.dev/macOS-full/install.sh | zsh
```

if fynjirby.dev domain is blocked or unavailable in your country try this command instead

```zsh
curl -sSL https://raw.githubusercontent.com/fynjirby/suppish/main/macOS-full/install.sh | zsh
```

#

also there are 2 other files in [config](https://github.com/fynjirby/suppish/tree/main/macOS-full/config)
after running this files it will write zed, zshrc configs

- zed_config.sh
<details>
    <summary><strong>see commands for zed config installer</strong></summary>

```zsh
curl -sSL https://suppish.fynjirby.dev/macOS-full/config/zed_config.sh | zsh
```

or

```zsh
curl -sSL https://raw.githubusercontent.com/fynjirby/suppish/main/macOS-full/config/zed_config.sh | zsh
```

</details>

- zshrc.sh
<details>
<summary><strong>see commands for zshrc config installer</strong></summary>

```zsh
curl -sSL https://suppish.fynjirby.dev/macOS-full/config/zshrc.sh | zsh
```

or

```zsh
curl -sSL https://raw.githubusercontent.com/fynjirby/suppish/main/macOS-full/config/zshrc.sh | zsh
```

</details>

#

### The following things will be installed & updated after 7 seconds timeout:

- zsh with Oh My Zsh
- zsh plugins: git, zsh-syntax-highlighting, zsh-autosuggestions, brew
- homebrew
- node.js + npm
- bun.js
- python
- lazygit, bat, thefuck, yazi, openssl
- zed
- nvim
- iterm2
- raycast
- google chrome
- cloudflare-warp
- mos
- spotify
- telegram
- qbittorrent
- balenaetcher
- appcleaner
- uninstallpkg
- shottr
- speedtest
- unzip
- ipherr
- wutdepc
- tydid

* Dock will hide faster on macOS

### This things will NOT be installed, but I use it:

- modrinth
- multipass
- utm
- pictogram

```zsh
brew install --cask modrinth multipass utm pictogram
```

- vivaldi
- vs code
- android-file-transfer

```zsh
brew install --cask vivaldi visual-studio-code android-file-transfer
```
