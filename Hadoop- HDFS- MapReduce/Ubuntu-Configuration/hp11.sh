

$ sudo chown hduser:hadoop /usr/local/hadoop/hduser_data/hdfs/namenode

$ sudo chmod 750 /usr/local/hadoop/hduser_data/hdfs/namenode

$ sudo chown hduser:hadoop /usr/local/hadoop/hduser_data/hdfs/datanode

$ sudo chmod 750 /usr/local/hadoop/hduser_data/hdfs/datanode

# Test Hadoop Process using the example file
echo "Ensure Hadoop services is running from hduser"
cd $HADOOP_HOME
$ bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.3.jar pi 2 5


