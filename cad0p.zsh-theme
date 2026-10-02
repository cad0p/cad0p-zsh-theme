# cad0p.zsh-theme
# Minimal one-line oh-my-zsh theme: 24h clock, user@host:dir, git:(branch).
# Based on geoffgarside.zsh-theme from oh-my-zsh (MIT), adding the hostname (%m).

PROMPT='[%*] %{$fg[cyan]%}%n@%m%{$reset_color%}:%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %(!.#.$) '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
