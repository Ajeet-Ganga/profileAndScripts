# From : http://stackoverflow.com/questions/16263556/installing-java-7-on-ubuntu
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer

#t'll keep your java 7 installation up to date.

#to automatically set up the Java 7 environment variables JAVA_HOME and PATH:

sudo apt-get install oracle-java7-set-default

# If this doesn't work follow this
# http://whatizee.blogspot.com/2014/07/solved-e-unable-to-locate-package.html


# Using  DataStax

#if [ "$(id -u)" != "0" ]; then
#	echo "Sorry, retry as Root (sudo ...)"
	#exit 1
#fi
#
#sudo sh -c 'echo "deb http://debian.datastax.com/community stable main" > /etc/apt/sources.list.d/cassandra.sources.list'
#curl -L http://debian.datastax.com/debian/repo_key | sudo apt-key add -
#sudo apt-get update
#sudo apt-get install dsc12=1.2.10-1 cassandra=1.2.10

#sudo service cassandra start
#sudo service cassandra stop
#sudo rm -rf /var/lib/cassandra/data/system/*



