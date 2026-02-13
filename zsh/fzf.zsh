export FZF_DEFAULT_OPTS='--bind ctrl-f:down,ctrl-b:up --style full --preview "fzf-preview.sh {}"'
export FZF_DEFAULT_COMMAND='fd'
export FZF_COMPLETION_TRIGGER='**'
export FZF_TMUX=1
export FZF_TMUX_HEIGHT='80%'
export fzf_preview_cmd='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlight -O ansi -l {} || bat {}) 2> /dev/null | head -500'

