echo "create the directory and set the required ownerships and permissions. \
The directory is used for configuring the ***-site.xml files under 'hadoopConfSitesSettings'"
su - akin
sudo mkdir -p /app/hadoop/tmp
cd /
sudo chown hduser:hadoop /app/hadoop/tmp
sudo chmod 750 /app/hadoop/tmp

echo "permissions: 0 = no operations allowed; 1 = execute; 2 = write; 4 = read;\
OWNER.HOME.PUBLIC; e.g. 7 = 4+2+1"

cd $HOME

