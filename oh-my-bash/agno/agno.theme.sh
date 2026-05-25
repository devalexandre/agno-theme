# Agno theme for Oh My Bash.

SCM_THEME_PROMPT_PREFIX=" ${gray}git:${yellow}"
SCM_THEME_PROMPT_SUFFIX="${normal}"
SCM_THEME_PROMPT_DIRTY=" ${red}dirty${normal}"
SCM_THEME_PROMPT_CLEAN=" ${green}clean${normal}"

_omb_theme_agno_prompt() {
  local exit_code="$?"
  local status_segment
  local git_segment=""

  if [[ "$exit_code" -eq 0 ]]; then
    status_segment="${green}ok${normal}"
  else
    status_segment="${red}${exit_code}${normal}"
  fi

  if type scm_prompt_info >/dev/null 2>&1; then
    git_segment="$(scm_prompt_info)"
  fi

  PS1="\n${white}\u@\h${normal} ${red}\w${normal}${git_segment} ${status_segment}\n${red}>${normal} "
}

safe_append_prompt_command _omb_theme_agno_prompt
