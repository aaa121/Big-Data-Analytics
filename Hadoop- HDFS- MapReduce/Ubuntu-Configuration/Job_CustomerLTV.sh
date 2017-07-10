su - hduser
cd $HADOOP_HOME
sbin/start-dfs.sh
sbin/start-yarn.sh

echo "Check the content of the distributed file system folder"
bin/hdfs dfs -ls /user/hduser

echo "Copy file from the local file system to the HDFS"
bin/hdfs dfs -put /home/hduser/localFS/data/*_details /user/hduser/data

echo "View the copied data"
bin/hdfs dfs -ls /user/hduser/data


echo "Run a Join operation as a MapReduce Job for determining customers life time value (LTV) given two set of dataset, customer and transaction details"

bin/hadoop jar /home/hduser/localFS/data/ReduceJoin.jar ReduceJoin /user/hduser/data/cust_details /user/hduser/data/transaction_details /user/hduser/data-customerLTV

echo "View the output file"
bin/hdfs dfs -ls /user/hduser/data-customerLTV
echo "Open the results within HDFS"
bin/hdfs dfs -cat /user/hduser/data-customerLTV/*0


echo "Copy the results from HDFS to local FS directory"
bin/hdfs dfs -get /user/hduser/data-customerLTV /home/hduser/localFS


cd /home/hduser/localFS

head ./data-customerLTV/*0

'''********RESULTS********************
Kristina	8	651.049999
Paige	6	706.970007
Sherri	3	527.589996
Gretchen	5	337.060005
Karen	5	325.150005
Patrick	5	539.380010
Elsie	6	699.550003
Hazel	10	859.419990
Malcolm	6	457.829996
Dolores	6	447.090004

**************************************'''


