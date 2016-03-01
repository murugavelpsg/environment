#!/bin/bash 
cd ~/Projects/icfd-rest/
scp icfb-thirdparty-libs/target/icfb-libs/endorsed/delegates/icfb-cloud-providers.jar msivagna@171.71.188.55:/ws/msivagna-sjc/sanity/
scp icfb-workflow-engine/target/icfb-workflow-engine.jar msivagna@171.71.188.55:/ws/msivagna-sjc/sanity/
scp icfb-thirdparty-libs/target/icfb-thirdparty.tar.gz msivagna@171.71.188.55:/ws/msivagna-sjc/sanity/
scp icfb-encryption-services/target/icfb-encryption-services-0.9.2-SNAPSHOT.jar msivagna@171.71.188.55:/ws/msivagna-sjc/sanity/icfb-encryption-services.jar
scp icfb-skinny-war/target/icfb-skinny.war msivagna@171.71.188.55:/ws/msivagna-sjc/sanity/icfb.war
