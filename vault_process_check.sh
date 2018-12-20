ps -ef| grep -i vault |grep -v grep >>/dev/null
    if [ $? -eq 0 ] ; then
        echo "Vault is up and Running on $HOSTNAME "
    else
        echo "Vault is not running on $HOSTNAME "
fi
