echo "Systemctl: enabling nginx"
/bin/systemctl enable nginx.service
echo "Systemctl: starting nginx"
/bin/systemctl start nginx.service
#sleep 5
#echo "Systemctl: checking status of threetier"
#/bin/systemctl status threetier.service
echo "Exiting"
exit 0