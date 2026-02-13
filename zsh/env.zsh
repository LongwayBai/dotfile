export ZSH=$HOME/.oh-my-zsh

export PATH="$HOME/.local/install/cargo/bin/:$PATH"
export PATH="$HOME/.local/install/delta-0.18.2/:$PATH"
export PATH="$HOME/.local/install/yazi/target/debug/:$PATH"
export PATH="$HOME/.nvm/versions/node/v24.12.0/bin/:$PATH"

is_inside_tmux()
{
    case "$TERM" in
        tmux*|screen*)
            if ps -o comm= -p $PPID | grep -q 'tmux'; then
                return 0 # 在tmux中
            fi
            ;;
    esac
    return 1 # 不在tmux中
}

if is_inside_tmux; then
    export TERM=screen-256color
else
    export TERM=xterm-256color
fi
export LANG=en_US,UTF-8
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=241"
export DISABLE_AUTO_UPDATE=true
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_MANUAL_REBIND=1
export EDITOR='nvim'

export SHELL=/bin/zsh # 如果有必要的话需要定义shell

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
