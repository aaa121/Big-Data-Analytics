echo "you either 'logout' or 'exit' out of the ssh connection"
sudo gedit /etc/sysctl.conf
echo "Add the following to the end of the config file"
# net.ipv6.conf.all.disable_ipv6 = 1
# net.ipv6.conf.default.disable_ipv6 = 1
# net.ipv6.conf.lo.disable_ipv6 = 1
