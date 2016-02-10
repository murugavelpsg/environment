#!/bin/bash 
cd ~/Projects/icfd-rest/
scp icfb-thirdparty-libs/target/icfb-libs/endorsed/delegates/icfb-cloud-providers.jar root@172.23.231.6:/tmp
scp icfb-workflow-engine/target/icfb-workflow-engine.jar root@172.23.231.6:/tmp
scp icfb-thirdparty-libs/target/icfb-thirdparty.tar.gz root@172.23.231.6:/tmp
scp icfb-messaging-server/target/icfb-messaging-server-0.9.2-SNAPSHOT.jar root@172.23.231.6:/tmp/icfb-messaging-server.jar
scp icfb-skinny-war/target/icfb-skinny.war root@172.23.231.6:/tmp/icfb.war
