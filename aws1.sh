#!/bin/bash

echo "which tool are youusing?"
echo "jenkins,ansible,aws,docker"
read -p "type you tool name:" tool

case $tool in
	jenkins)
		version= "head -5 /var/lib/jenkins/config.xml | grep -i version"
		;;
	ansible)
		version= ansible --version
		;;
	aws)
		version= error
		;;
	docker)
		version= docker --version
		;;
esac

echo "Your version:$version"

