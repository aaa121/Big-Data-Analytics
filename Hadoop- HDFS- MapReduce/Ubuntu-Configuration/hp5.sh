cd ~/Downloads
sudo tar xvzf hadoop-2.7.3.tar.gz
sudo mv hadoop-2.7.3 /usr/local/
cd /usr/local
echo "Renaming hadoop file"
sudo mv hadoop-2.7.3 hadoop
sudo chown -R hduser:hadoop /usr/local/hadoop
echo "Install vim from the root/ admin account. Then, switch to hduser \
to set the environment variables for hadoop. Open the ~/.bashrc file for hduser using \
vim ~\.bashrc
Press 'G' : To go to the last line \
Past the environment settings from bashrcsettings file
Press 'Q' : To exist
Type 'wq' to write and quit" 
su - hduser
