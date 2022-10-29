# Prompt symbol
top_prompt_symbol() {
    echo -n '%(?:%{$fg[green]%}╭─:%{$fg[red]%}╭─)%{$reset_color%}'
}

bottom_prompt_symbol() {
    echo -n '%(?:%{$fg[green]%}╰─➤:%{$fg[red]%}╰─➤)%{$reset_color%} '
}

# User info
current_user() {
    echo -n '[%{$fg_bold[cyan]%}%n%{$reset_color%}]'

}

# Directory info
current_directory() {
    echo -n ' in %{$fg_bold[yellow]%}[${PWD/#$HOME/~}]%{$reset_color%}'
}


ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=""

PROMPT="$(top_prompt_symbol)$(current_user)$(current_directory)$(git_prompt_info)
$(bottom_prompt_symbol)"