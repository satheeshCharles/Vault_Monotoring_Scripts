#!/bin/bash
code=`curl -k -s -o /dev/null -w "%{http_code}" https://172.30.3.74:8200/v1/sys/health`

echo "$code"
if [ "$code" = "200" ] ; then
    echo " Vault is initialized, unsealed, and active"
elif [ "$code" = "429" ] ; then
    echo " Vault is unsealed and standby"
elif [ "$code" = "472" ] ; then
    echo " Vault is data recovery mode replication secondary and active"
elif [ "$code" = "473" ] ; then
    echo " Vault is in performance standby"
elif [ "$code" = "501" ] ; then
    echo " Vault is NOT initialized"
elif [ "$code" = "503" ] ; then
    echo " Vault is SEALED"
else
    echo " No Return Code Verification Needed"
fi
