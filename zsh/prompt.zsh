echo -ne "\e]12;orange\007"
export LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:"
export EXA_COLORS="uu=38;5;255:gu=38;5;255:ur=38;5;255:uw=38;5;255:ue=38;5;255:wx=38;5;255:gr=38;5;250:gw=38;5;250:gx=38;5;250:tr=38;5;255:tw=38;5;255:tx=38;5;255:da=38;5;250:sn=32:sb=0:di=38;5;105"

if [ $UID -eq 0 ]; then
    CARETCOLOR="red"
else
    CARETCOLOR="blue"
fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# show up to 3 parent dirs, except ~, resolve all other dir aliases
function collapse_pwd {
    curr_pwd=$(pwd | sed -e "s,^$HOME,~,")
    relevant_slashes=$(expr $(echo $curr_pwd | tr -d -c / | wc -c) - 1)
    echo $curr_pwd | cut -d / -f$(($relevant_slashes>0?$relevant_slashes:1))-
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"   # Prefix at the very beginning of the prompt, before the branch name
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}" # At the very end of the prompt
ZSH_THEME_GIT_PROMPT_DIRTY="*"                   # Text to display if the branch is dirty
ZSH_THEME_GIT_PROMPT_CLEAN=""                    # Text to display if the branch is clean

PROMPT='%{${fg[green]}%}$(collapse_pwd) $(git_prompt_info)%{${fg_bold[$CARETCOLOR]}%}»%{${reset_color}%} ' #${PWD/#$HOME/~}
RPS1="${return_code}"
