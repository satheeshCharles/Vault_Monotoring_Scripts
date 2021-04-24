RECIPIENT="satheesh.charles@gmail.com";
VAULT_VERSION=`vault -version 2>&1 |awk 'NR==1{ gsub(/"/,""); print $2 }'`
BASE_VERSION="v0.11.4"
if [ "$VAULT_VERSION" == "$BASE_VERSION" ];  then
 echo " Vault Version on BASE (Vault Server-1 ip:172.30.3.44) - No action Needed"\
    | mail -s "Vault Version -OK " $RECIPIENT ;
else
 echo " Vault Version mismatch with BASE , Please login to the server and verify" \
    | mail -s "Vault Version MISSMATCH " $RECIPIENT ;
fi


