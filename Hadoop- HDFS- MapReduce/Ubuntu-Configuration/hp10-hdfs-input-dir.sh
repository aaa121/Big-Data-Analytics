echo "Make the HDFS directories required to execute MapReduce jobs. Ensure all Hadoop processes have been started such as:"
# su - hduser
# ssh hduser@localhost
# cd $HADOOP_HOME
# sbin/start-dfs.sh
# sbin/start-yarn.sh

cd $HADOOP_HOME
bin/hdfs dfs -mkdir /user
bin/hdfs dfs -mkdir /user/hduser
bin/hdfs dfs -mkdir /user/hduser/data
