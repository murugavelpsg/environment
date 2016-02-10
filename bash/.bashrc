#script to see the current folder location and git branch info
function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME=/Users/msivagna/Softwares/apache-maven-3.3.3
export PATH=$PATH:$M2_HOME/bin:/usr/local/bin:/usr/local/mysql/bin:~/Documents/scripts
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=128m"
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
source ~/git-completion.bash

alias cd1='cd ..; pwd'
alias cd2='cd ../..;pwd'
alias cd3='cd ../../..;pwd'
alias cd4='cd ../../../..;pwd'
alias cd5='cd ../../../../..;pwd'
alias cd6='cd ../../../../../..;pwd'

alias less='less -r'
alias tree='tree -C'

alias skim="(head -5; tail -5) <"
alias lsdir="ls -l | grep '^d'"

# Sort files by Size
alias sortbysize="ls -s | sort -n"

# Show where you copy
alias cp="cp -v"

alias startmysql="sudo /usr/local/mysql/support-files/mysql.server start"
alias stopmysql="sudo /usr/local/mysql/support-files/mysql.server stop"
alias icfdrest="cd ~/Projects/icfd-rest/"
alias tomcat="/usr/local/apache-tomcat-8.0.24"
alias copywar="scp icfb-app/target/icfb.war root@172.23.231.10:/opt/infra/web_cloudmgr/apache-tomcat/webapps"
alias copywf="scp icfb-workflow-engine/target/icfb-workflow-engine.jar root@172.23.231.10:/opt/infra"
alias sshicfd="ssh root@172.23.231.10"
alias bld="mvn -U install"
alias bldskip="mvn -U install -DskipTests"
alias clnbld="mvn -U clean install"
alias clnbldskip="mvn -U clean install -DskipTests"
