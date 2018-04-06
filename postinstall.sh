echo "Check out /etc/nginx"
find /etc/nginx
echo
echo "Copy configuration into place"
/bin/cp -v /app/threetier-web/threetier.conf /etc/nginx/sites-enabled/default
echo "Systemctl: enabling nginx"
/bin/systemctl enable nginx.service
echo "Systemctl: starting nginx"
/bin/systemctl restart nginx.service
#sleep 5
#echo "Systemctl: checking status of threetier"
#/bin/systemctl status threetier.service
echo "Exiting"
exit 0
