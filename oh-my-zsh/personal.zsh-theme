parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

NEWLINE=$'\n'
PROMPT="%F{green}%n%f@%F{magenta}%m%f"
PROMPT+=" %F{cyan}[%~]%f %F{yellow}\$(parse_git_branch)%f${NEWLINE}➜ "

export LSCOLORS=gxfxcxdxbxegedabagacad
