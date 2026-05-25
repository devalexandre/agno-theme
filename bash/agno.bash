# Agno prompt theme for Bash.
# Source this file from ~/.bashrc.

__agno_color() {
  printf '\001\033[%sm\002' "$1"
}

AGNO_RESET="$(__agno_color 0)"
AGNO_DIM="$(__agno_color 2)"
AGNO_RED="$(__agno_color '38;5;202')"
AGNO_GREEN="$(__agno_color '38;5;35')"
AGNO_YELLOW="$(__agno_color '38;5;220')"
AGNO_GRAY="$(__agno_color '38;5;245')"
AGNO_WHITE="$(__agno_color '38;5;252')"

__agno_git_branch() {
  local branch

  branch="$(git symbolic-ref --quiet --short HEAD 2>/dev/null)" ||
    branch="$(git rev-parse --short HEAD 2>/dev/null)" ||
    return 0

  printf ' %sgit:%s%s%s' "$AGNO_GRAY" "$AGNO_YELLOW" "$branch" "$AGNO_RESET"
}

__agno_prompt_command() {
  local exit_code="$?"
  local status_segment

  if [ "$exit_code" -eq 0 ]; then
    status_segment="${AGNO_GREEN}ok${AGNO_RESET}"
  else
    status_segment="${AGNO_RED}${exit_code}${AGNO_RESET}"
  fi

  PS1="\n${AGNO_DIM}${AGNO_WHITE}\u@\h${AGNO_RESET} ${AGNO_RED}\w${AGNO_RESET}$(__agno_git_branch) ${status_segment}\n${AGNO_RED}>${AGNO_RESET} "
}

PROMPT_COMMAND="__agno_prompt_command${PROMPT_COMMAND:+;$PROMPT_COMMAND}"
