#!/usr/bin/env sh
SERVICE_FILE=/var/lib/tor/hidden_services/BitcartCC-Merchants-API/hostname
if [ -f $SERVICE_FILE ]; then
    read -r BITCART_ADMIN_ONION_URL < $SERVICE_FILE
    export BITCART_ADMIN_ONION_URL="$BITCART_ADMIN_ONION_URL"
fi
yarn start