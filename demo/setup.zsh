#!/usr/bin/env zsh
# Demo-only setup for the preview recording (see demo/README.md).
# Loads the cad0p theme with a neutral identity so the public recording
# does not leak the real user@host, then builds a throwaway demo repo.

REPO="${${(%):-%x}:A:h}/.."

ZSH_THEME=robbyrussell source "$HOME/.oh-my-zsh/oh-my-zsh.sh"
source "$REPO/cad0p.zsh-theme"

PROMPT='[%*] %{$fg[cyan]%}cad0p@cad0p-mbp%{$reset_color%}:%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %(!.#.$) '

DEMO="${TMPDIR:-/tmp}/cad0p-zsh-theme-demo/cad0p-zsh-theme"
mkdir -p "$DEMO"
cp "$REPO/cad0p.zsh-theme" "$REPO/README.md" "$REPO/LICENSE" "$REPO/package.json" "$REPO/CHANGELOG.md" "$DEMO/"
git -C "$DEMO" init -b demo -q
git -C "$DEMO" add -A
git -C "$DEMO" -c user.name=cad0p -c user.email=cad0p@example.com commit -qm "chore: initial files" || true
cd "$DEMO"
clear
