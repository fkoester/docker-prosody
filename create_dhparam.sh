DHPARAM_FILE="/etc/dhparam/dhparam.pem"
if [ ! -f ${DHPARAM_FILE} ]; then
    echo "dhparam file ${DHPARAM_FILE} does not exist. Generating one with 4086 bit. This will take a while..."
    mkdir -p $(dirname ${DHPARAM_FILE})
    openssl dhparam -out ${DHPARAM_FILE} 4096 && echo "Finished. Starting service now..."
fi
