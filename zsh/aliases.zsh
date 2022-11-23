[ -f "$DOTFILES/zsh/expand-alias.zsh" ] && source "$DOTFILES/zsh/expand-alias.zsh"

alias sz='source ~/.zshrc'

ialias ls='ls -G'
alias ll='ls -lh'
alias la='ls -lAh'
ialias tree='tree -a -I ".git|.idea"'
alias tree2='tree -L 2'
alias tree3='tree -L 3'

ialias grep='grep --color=auto'
ialias fgrep='fgrep --color=auto'
ialias egrep='egrep --color=auto'

ialias curl='curl --silent --show-error'

alias v='vim'
ialias vi='vim'
ialias cat='bat --plain --wrap character'

alias txf='tar -xf'
alias uz='unzip'
alias uzl='unzip -l'

alias md='mkdir -p'

alias tns='tmux new-session -s'
alias tnsd='tmux new-session -s tjl_workspace'
alias tasd='tmux attach-session -t tjl_workspace'
alias tas='tmux list-session \
  | awk -F'"'"':'"'"' '"'"'{print $1}'"'"' \
  | fzf --print0 --select-1 --exit-0 \
  | xargs -0 -o -t tmux attach-session -t'
alias tls='tmux list-session'
alias tks='tmux list-session \
  | awk -F'"'"':'"'"' '"'"'{print $1}'"'"' \
  | fzf --print0 --select-1 --exit-0 \
  | xargs -0 -o -t tmux kill-session -t'
alias tksa='tmux kill-session -a'

alias mvv='mvn -v'
alias mvV='mvn validate'
alias mci='mvn clean install'
alias mciT='mvn clean install -DskipTests'
alias mciTT='mvn clean install -Dmaven.test.skip'
alias mcd='mvn clean deploy'
alias mcdT='mvn clean deploy -DskipTests'
alias mcdTT='mvn clean deploy -Dmaven.test.skip'
alias mp='mvn package'
alias mpT='mvn package -DskipTests'
alias mpTT='mvn package -Dmaven.test.skip'
alias mcp='mvn clean package'
alias mcpT='mvn clean package -DskipTests'
alias mcpTT='mvn clean package -Dmaven.test.skip'
alias mve='mvn verify'
alias mcv='mvn clean verify'
alias mc='mvn clean'
alias mct='mvn clean test'
alias mgs='mvn generate-sources'
alias mlc='mvn license:check'
alias mlf='mvn license:format'
alias tmci='mvn -pl '"'"'!:trino-server-rpm,!:trino-docs,!:trino-proxy,!:trino-verifier,!:trino-benchto-benchmarks'"'"' \
  -DskipTests \
  -Dmaven.javadoc.skip=true \
  -Dmaven.source.skip=true \
  -Dair.check.skip-all=true \
  -U \
  clean install'
alias pmci='mvn -pl '"'"'!:presto-server-rpm,!:presto-docs,!:presto-proxy,!:presto-verifier,!:presto-benchto-benchmarks'"'"' \
  -DskipTests \
  -Dmaven.javadoc.skip=true \
  -Dmaven.source.skip=true \
  -Dair.check.skip-all=true \
  -U \
  clean install'

alias gst='git status'
alias ga='git ls-files --modified --others --exclude-standard \
  | fzf --multi --print0 --select-1 --exit-0 --bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all \
  | xargs -0 -o -t git add'
alias gapa='git ls-files --modified --others --exclude-standard \
  | fzf --multi --print0 --select-1 --exit-0 --bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all \
  | xargs -0 -o -t git add --patch'
alias gaa='git add --all'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcaa='git commit --amend --author='"\"$(git_current_user_name) <$(git_current_user_email)>\""' --no-edit'
alias gce='git commit --allow-empty -m "empty"'
balias gcf='git commit --fixup='
balias gcfa='git commit --fixup=amend:'
balias gcfr='git commit --fixup=reword:'
alias gps='git push'
alias gpsc='git push origin $(git_current_branch)'
alias gpsf='git push --force'
alias gpsfc='git push --force origin $(git_current_branch)'
alias gpl='git pull --prune'
alias gplrb='git pull --rebase --prune'
alias gf='git fetch'
alias gb='git branch'
alias gbD='git branch -D'
alias gbm='git branch -m'
alias gbmc='git branch -m $(git_current_branch)'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gsw='git switch'
alias gswc='git switch -c'
alias grs='git restore'
alias grst='git restore --staged'
alias grso='git restore --source'
alias grsp='git restore --patch'
alias grbi='git rebase -i --autosquash'
balias grbiH='git rebase -i --autosquash HEAD~'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbom='git rebase origin/$(git_main_branch)'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias grsh='git reset --hard'
alias gbl='git blame -b -w'
alias gd='git diff'
balias gdH='git diff HEAD~'
alias gdca='git diff --cached'
alias gds='git diff --staged'
alias gg='git grep'
alias ggn='git grep -n'
alias gl='git log'
alias glo='git log --oneline'
alias gstl='git stash list'
alias gstps='git stash push'
alias gstpsm='git stash push -m'
alias gstpsp='git stash push --patch'
alias gstpspm='git stash push --patch -m'
alias gstpsmp='git stash push --patch -m'
alias gstpo='git stash pop'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstc='git stash clear'
alias gsts='git stash show'
alias gstsp='git stash show --patch'
alias gsh='git show'
alias gcl='git clone --recurse-submodules'
alias gr='git remote'
alias grv='git remote -v'
alias gra='git remote add'
alias grmv='git remote rename'
alias grrm='git remote remove'

alias j8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
alias j11='export JAVA_HOME=$(/usr/libexec/java_home -v 11)'
alias j17='export JAVA_HOME=$(/usr/libexec/java_home -v 17)'

ialias jumper='ssh -i ~/.ssh/id_rsa_jumper tangjiangling@jumper.sankuai.com'
ialias sftp='sftp tangjiangling@jumper.sankuai.com'
ialias mat='/Applications/mat.app/Contents/MacOS/MemoryAnalyzer'
