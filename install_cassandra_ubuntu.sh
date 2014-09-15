cd /tmp
wget http://www.us.apache.org/dist/cassandra/2.1.0/apache-cassandra-2.1.0-bin.tar.gz
tar -xvzf apache-cassandra-2.1.0-bin.tar.gz
mv apache-cassandra-2.1.0 ~/cassandra

sudo mkdir /var/lib/cassandra
sudo mkdir /var/log/cassandra
sudo chown -R $USER:$GROUP /var/lib/cassandra
sudo chown -R $USER:$GROUP /var/log/cassandra

export CASSANDRA_HOME=~/cassandra
echo 'export CASSANDRA_HOME=~/cassandra' >> ~/.bashrc
export PATH=$PATH:$CASSANDRA_HOME/bin
echo 'export PATH=$PATH:$CASSANDRA_HOME/bin' >> ~/.bashrc

alias cassandra_start_bg='sudo sh ~/cassandra/bin/cassandra'
alias cassandra_start_fg='sudo sh ~/cassandra/bin/cassandra -f'
alias cassandra_stop='sudo pkill -f CassandraDaemon'

echo 'alias cassandra_start_bg="sudo sh ~/cassandra/bin/cassandra"' >> ~/.bashrc
echo 'alias cassandra_start_fg="sudo sh ~/cassandra/bin/cassandra -f"' >> ~/.bashrc
echo 'alias cassandra_stop="sudo pkill -f CassandraDaemon"' >> ~/.bashrc



