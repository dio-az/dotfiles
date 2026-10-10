# ~dio-az

Personal dotfiles for editor, shell, git and tooling.

## Install

```sh
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

brew bundle

ln -sfn $PWD/.config $PWD/.ssh $PWD/.vimrc ~
cp .zshrc ~
```

### Time Machine

```sh
tmutil addexclusion ~/Library/Group\ Containers/HUAQ24HBR6.dev.orbstack/data
```

### Rust

```sh
brew link --force rustup
```

### .NET

```sh
ln -sfn  $PWD/launch-agents/env.dotnet.plist ~/Library/LaunchAgents/
```

### Java

```sh
ln -sfn $(brew --prefix openjdk)/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines
```

## Theme and Font

[Dracula](https://draculatheme.com) theme with [JetBrains Mono](https://www.jetbrains.com/lp/mono/) font.

```sh
fast-theme XDG:dracula
```
