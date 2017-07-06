cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys
ssh hduser@localhost
echo "if it retruns [ssh: connect to host localhost port 22: Connection refused]. Then diagonise and fix as follows"
ssh -vvv localhost
#sudo gedit /etc/ssh/ssh_config

service ssh status
echo "if not active, run $sudo apt-get install ssh"
ssh hduser@localhost
