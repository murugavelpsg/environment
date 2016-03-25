#!/bin/bash
cp /tmp/icfb-workflow-engine.jar /opt/icfb/workflow-engine/
cp /tmp/icfb.war /opt/tomcat/webapps/icfb.war
cp /tmp/icfb-cloud-providers.jar /opt/tomcat/icfb-libs/endorsed/delegates
ps -ef | grep workflow | grep -v grep | awk '{print $2}' | xargs kill -9
ps -ef | grep tomcat | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 2
cd /opt/icfb/workflow-engine/ && java  -Xms4096m -Xmx4096m -XX:MaxPermSize=512m -Xdebug -Xrunjdwp:transport=dt_socket,address=9042,server=y,suspend=n -cp icfb-workflow-engine.jar -jar icfb-workflow-engine.jar -httpPort 9000 &
cd /opt/tomcat/bin; ./catalina.sh jpda start
