#!/bin/bash

# TODO: replace this with env var
#HOME_JENKINS_SLAVE="/home/jenkins-slave"

echo "--------------------------"
echo "REMOVE mozilla-central"
echo "--------------------------"

rm -rf mozilla-central

echo "--------------------------"
echo "CLONE mozilla-central"
echo "--------------------------"

hg clone http://hg.mozilla.org/mozilla-central

echo "--------------------------"
echo "SYMLINK mozilla-central"
echo "--------------------------"

cd "${HOME_JENKINS_SLAVE}"
ln -sf "${HOME_JENKINS_SLAVE}/workspace/${JOB_NAME}/mozilla-central" mozilla-central > /home/ubuntu/.bash_aliases
