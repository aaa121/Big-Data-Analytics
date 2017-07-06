su - hduser
echo "Format the file system. WARNING: Do not format when a job is running. Otherwise, all files will be formatted."
cd $HADOOP_HOME
bin/hdfs namenode -format

##########
echo "Start NameNode daemon and DataNode daemon"
sbin/start-dfs.sh

echo "the web interface for the NameNode; by default it is available at"
firefox http://localhost:50070/

echo "the web interface for the SecondaryNameNode; by default it is available at"
firefox http://localhost:50090/

###########
echo "Start ResourceManager daemon and NodeManager daemon"
sbin/start-yarn.sh

echo "the web interface for the ResourceManager or YARN Nodemanager"
firefox http://localhost:8088/

##########
echo "Tool for checking whether the expected Hadoop processes are running is"
jps

echo "To check the configured ports Hadoop is listening to:"
netstat -plten | grep java

#######
echo "Stop all the nodes and resource manager"
sbin/stop-dfs.sh
sbin/stop-yarn.sh

##############################################################################
##############################################################################
echo "Alternatively, the NameNode, DataNode, YARN daemons/ ResourceManager, JPS, SecondaryNameNode can be started simulateneously using: sbin/start-all.sh
It is likely to return: This script is Deprecated. Instead use stop-dfs.sh and stop-yarn.sh"

sbin/start-all.sh
jps

echo "the web interface for the NameNode and Secondary NameNode; by default it is available at"
firefox http://localhost:50070/
firefox http://localhost:50090/

echo "the web interface for the ResourceManager or YARN Nodemanager"
firefox http://localhost:8088/

sbin/stop-all.sh






