cd /tmp
wget http://www.us.apache.org/dist/cassandra/2.1.0/apache-cassandra-2.1.0-bin.tar.gz
tar -xvzf aapache-cassandra-2.1.0-bin.tar.gz
mv apache-cassandra-2.1.0-bin.tar.gz ~/cassandra

sudo mkdir /var/lib/cassandra
sudo mkdir /var/log/cassandra
sudo chown -R $USER:$GROUP /var/lib/cassandra
sudo chown -R $USER:$GROUP /var/log/cassandra

export CASSANDRA_HOME=~/cassandra
echo 'export CASSANDRA_HOME=~/cassandra' >> ~/.bashrc
export PATH=$PATH:$CASSANDRA_HOME/bin
echo 'export PATH=$PATH:$CASSANDRA_HOME/bin' >> ~/.bashrc

