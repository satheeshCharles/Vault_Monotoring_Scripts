RECIPIENT="satheesh.charles@gmil.com";
JAVA_VERSION=`java -version 2>&1 |awk 'NR==1{ gsub(/"/,""); print $3 }'`
BASE_VERSION="1.8.0_152"
if [ "$JAVA_VERSION" == "$BASE_VERSION" ];  then
 echo " Java Version on BASE (Vault Server-1 ip:172.30.3.44) - No action Needed"\
    | mail -s "Java Version -OK " $RECIPIENT ;
else
 echo " Java Version mismatch with BASE , Please login to the server and verify" \
    | mail -s "Vault Version MISSMATCH (Vault Server-1 ip:172.30.3.44) " $RECIPIENT ;
fi
