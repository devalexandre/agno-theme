# Agno prompt theme for Zsh.
# Source this file from ~/.zshrc.

autoload -Uz add-zsh-hook vcs_info

zstyle ':vcs_info:git:*' formats ' %F{245}git:%F{220}%b%f'
zstyle ':vcs_info:git:*' actionformats ' %F{245}git:%F{220}%b:%F{202}%a%f'

setopt prompt_subst

__agno_precmd() {
  vcs_info
}

add-zsh-hook -d precmd __agno_precmd 2>/dev/null
add-zsh-hook precmd __agno_precmd

AGNO_STATUS='%(?.%F{35}ok%f.%F{202}%?%f)'
PROMPT=$'\n%F{252}%B%n@%m%b%f %F{202}%~%f${vcs_info_msg_0_} ${AGNO_STATUS}\n%F{202}>%f '
