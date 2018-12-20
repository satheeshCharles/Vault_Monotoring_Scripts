ps -ef| grep -i Consul |grep -v grep >>/dev/null
    if [ $? -eq 0 ] ; then
        echo "Consul is up and Running on $HOSTNAME "
    else
        echo "Consul is not running on $HOSTNAME "
fi
