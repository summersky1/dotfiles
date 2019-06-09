# Tell ls to be colourful
export CLICOLOR=1
# default
# export LSCOLORS=Exfxcxdxbxegedabagacad
export LSCOLORS=gxfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# Prompt custom colors + display active git branch
PS1="\[\e[0;32m\]\u\[\e[0m\]@\[\e[0;35m\]\h\[\e[0m\]:\[\e[0;36m\]\w\[\e[33m\]\$(parse_git_branch)\[\e[0m\]$ "

# Quickly show/hide hidden files in Finder
alias showHF='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideHF='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Cross platform aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
