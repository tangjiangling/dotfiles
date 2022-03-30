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

alias txf='tar -xf'
alias uz='unzip'
alias uzl='unzip -l'

alias md='mkdir -p'

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
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gce='git commit --allow-empty'
alias gps='git push'
alias gpl='git pull'
alias gb='git branch'
alias gbD='git branch -D'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gri='git rebase -i'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gbl='git blame -b -w'
alias gd='git diff'
alias gg='git grep'
alias ggn='git grep -n'
alias gl='git log'
alias glo='git log --oneline'

alias j8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
alias j11='export JAVA_HOME=$(/usr/libexec/java_home -v 11)'

ialias jumper='ssh -i ~/.ssh/id_rsa_jumper tangjiangling@jumper.sankuai.com'
ialias sftp='sftp tangjiangling@jumper.sankuai.com'
ialias mat='/Applications/mat.app/Contents/MacOS/MemoryAnalyzer'
