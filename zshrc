# git branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'

PROMPT='%F{green}[%~]%f %F{yellow}'\$vcs_info_msg_0_'%f'$'\n''%F{green}>%f '

alias ll='ls -pla'
