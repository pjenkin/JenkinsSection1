#!/bin/bash
#echo "Adding apt-keys"
#wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
# add the key (PGP cert code) of Jenkins to the VM's list of APT keys
#echo deb http://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
# display and write to file (with tee) the link to the Jenkins binary to get later

echo "Updating apt-get"
sudo apt-get -qq update

echo "Installing default-java"
sudo apt-get -y install default-jre > /dev/null 2>&1
sudo apt-get -y install default-jdk > /dev/null 2>&1		# get & installing JDK as well as JRE (y prompt)

echo "Installing git"						# putting git on the VM for use in pushing
sudo apt-get -y install git > /dev/null 2>&1

echo "Installing git-ftp"
sudo apt-get -y install git-ftp > /dev/null 2>&1

#echo "Installing jenkins"
#sudo apt-get -y install jenkins > /dev/null 2>&1
#sudo service jenkins start
# apparently no need to install Jenkins on the node/agent machine
# https://wiki.jenkins.io/display/JENKINS/Step+by+step+guide+to+set+up+master+and+agent+machines+on+Windows

sleep 1m

#echo "Installing Jenkins Plugins"
#JENKINSPWD=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
#echo $JENKINSPWD						# show us the password please!

# from https://medium.com/@rdarida/installing-jenkins-on-localhost-with-vagrant-8aa59761bec