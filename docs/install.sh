#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

if [ $(whoami) != "root" ];then
	echo "Unexpected exit. Please use root user"
	exit 1;
fi

SYSTEM=$(cat /etc/issue|grep Ubuntu|awk '{print $2}'|cut -f 1 -d '.')
if [ "${SYSTEM}" -lt "16" ];then
	echo "Unexpected exit, wrong operating system selection"
	exit 1
fi

echo "
/+ 
  Forest Network install . F node
  -------------------------------------
  ==> If you have already built Forest. F Node. Please do not use this script
  ==> Please use the safest way to keep your private key, it cannot be retrieved or changed
  ==>  Script version 0.0.1
 +\ 

"
echo "

  ※ I will update the software on your server and install these extensions wget curl unzip openjdk-8-jdk-headless
  ※ Build the node program in the /root directory
 

"


while [ "$START" != 'y' ] && [ "$START" != 'n' ]
do
	read -p "Are you sure whether to install F Node now? (y/n) " START;
done

if [ "$START" == 'n' ];then
	exit;
fi

FOREST=/root/.forest

if [ ! -d $FOREST ];then
		mkdir -p $FOREST
fi


aptInstall(){
    apt update -y
    apt upgrade -y 
    apt install wget curl unzip openjdk-8-jdk-headless
}

aptInstall

getIP(){
    curl ifconfig.me >$FOREST/.ipconfig
}


if [ ! -d $FOREST/.ipconfig ];then
		getIP
fi


getExec(){
    echo -e 'Please get the latest version number at the link below'
    echo -e 'https://github.com/fodchain/Manuscript/releases'
    echo -e ''
    read -p "Please enter the correct version number(Such as 1.0.0):" gitVersion
    wget -P /root https://github.com/fodchain/Manuscript/releases/download/${gitVersion}/F-node.zip
    unzip F-node.zip
}

if [ ! -d /root/forest ];then
		getExec
fi



cd ~
wget https://docs.forestscan.io/fod
chmod +x fod
mv fod  /usr/local/bin/

fod
