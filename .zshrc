source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh

zstyle ':antidote:bundle' file ~/.config/zsh/plugins

zstyle ':zephyr:plugin:completion' use-cache yes
zstyle ':zephyr:plugin:editor:*' cursor style block
zstyle ':zephyr:plugin:confd' directory ~/.config/zsh/rc.d
zstyle ':zephyr:plugin:confd' immediate yes

antidote load

# no coloring for fzf compatibility
zstyle ':completion:*' format ' -- %d --'

tabs -4

export GPG_TTY=$(tty)
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_GITHUB_API_TOKEN=
export GOPATH="$XDG_DATA_HOME/go"
