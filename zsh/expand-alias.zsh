#
# Expand alias with a space
#
# alias  - expand with trailing space
# ialias - don't expand
# balias - expand without trailing space
#

typeset -a ialiases baliases
local ialiases=()
local baliases=()

ialias() {
    alias $@
    args="$@"
    args=${args%%\=*}
    ialiases+=(${args##* })
}

balias() {
    alias $@
    args="$@"
    args=${args%%\=*}
    baliases+=(${args##* })
}

expand-alias-with-space() {
    [[ $LBUFFER =~ "^(${(j:|:)baliases})\$" ]]; insertBlank=$?
    if [[ ! $LBUFFER =~ "^(${(j:|:)ialiases})\$" ]]; then
        zle _expand_alias
    fi
    zle self-insert
    if [[ "$insertBlank" = "0" ]]; then
        zle backward-delete-char
    fi
}

zle -N expand-alias-with-space
bindkey " " expand-alias-with-space
bindkey -M isearch " " magic-space
