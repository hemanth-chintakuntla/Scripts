
#!/bin/sh

echo "======= Checking Current OS Version ======="
cat /etc/*release

echo "======= Checking Security Updates ======="
sudo yum --security check-update
sudo yum updateinfo summary

echo "======= Istalling Security Updates ======="
sudo yum -y --security update

sudo yum clean all

echo "======= Rebooting the Instance ======="
sudo reboot
