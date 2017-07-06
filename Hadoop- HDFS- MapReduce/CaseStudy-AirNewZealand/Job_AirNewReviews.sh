su - hduser
mkdir -p localFS/data
mv ANZFlightReviews.txt ./localFS/data/
cd $HADOOP_HOME
sbin/start-dfs.sh
sbin/start-yarn.sh

echo "Check the content of the distributed file system folder"
bin/hdfs dfs -ls /user/hduser

echo "Copy file from the local file system to the HDFS"
bin/hdfs dfs -put /home/hduser/localFS/data /user/hduser

echo "View the copied data"
bin/hdfs dfs -ls /user/hduser/data


echo "Run a MapReduce Job for counting words used in Air New Zealand Flight Review for April 2017"
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.3.jar wordcount /user/hduser/data /user/hduser/data-ANZOutput

echo "View the output file"
bin/hdfs dfs -ls /user/hduser/data-ANZOutput

echo "Open the results within HDFS"
bin/hdfs dfs -cat /user/hduser/data-ANZOutput/*0


echo "Copy the results from HDFS to local FS directory"
bin/hdfs dfs -get /user/hduser/data-ANZOutput /home/hduser/localFS/


cd /home/hduser/localFS

head ./data-ANZOutput/*0



