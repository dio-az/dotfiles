# ~dio-az

Personal dotfiles for editor, shell, git and tooling.

## Install

```sh
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

brew bundle

ln -s ${PWD#$HOME/}/.config ${PWD#$HOME/}/.ssh ${PWD#$HOME/}/.vimrc ~
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
ln -s ${PWD#$HOME/}/launch-agents/env.dotnet.plist ~/Library/LaunchAgents/
```

### Java

```sh
ln -s $(brew --prefix openjdk)/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines
```

## Theme and Font

[Dracula](https://draculatheme.com) theme with [JetBrains Mono](https://www.jetbrains.com/lp/mono/) font.

```sh
fast-theme XDG:dracula
```
