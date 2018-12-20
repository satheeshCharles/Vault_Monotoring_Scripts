RECIPIENT="satheesh.charles@gmail.com";
CONSUL_VERSION=`consul --version 2>&1 |awk 'NR==1{ gsub(/"/,""); print $2 }'`
BASE_VERSION="v1.3.1"
if [ "$CONSUL_VERSION" == "$BASE_VERSION" ];  then
 echo " Consul Version on BASE (Vault Server-1 ip:172.30.3.44) - No action Needed"\
    | mail -s "Consul Version -OK " $RECIPIENT ;
else
 echo " Consul Version mismatch with BASE , Please login to the server and verify" \
    | mail -s "Consul Version MISSMATCH (Vault Server-1 ip:172.30.3.44) " $RECIPIENT ;
fi
