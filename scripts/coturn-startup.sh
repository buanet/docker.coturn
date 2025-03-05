#!/bin/sh

if [ -n "$LISTENING_IP_ADDRESS" ]; then
  echo "Listening on $LISTENING_IP_ADDRESS."
  LISTENING_IP_ADDRESS_OPTS=" -L $LISTENING_IP_ADDRESS"    
else
  echo "No LISTENING_IP_ADDRESS set. Listening on all interfaces.";
fi

if [ -n "$EXTERNAL_IP_ADDRESS" ]; then
  echo "Using $EXTERNAL_IP_ADDRESS as TURN relay address."
else
  EXTERNAL_IP_ADDRESS=$(detect-external-ip)
  echo "No EXTERNAL_IP_ADDRESS set. Using autodetected $EXTERNAL_IP_ADDRESS as TURN relay address."
fi

if [ -z "$TURN_PORT" ]; then
  TURN_PORT="3478"
  echo "No TURN_PORT set. Using default port 3478.";
fi

if [ -z "$TURN_USERNAME" ]; then
  TURN_USERNAME="stunturn"
  echo "No TURN_USERNAME set. Using default 'stunturn'."
fi

if [ -z "$TURN_PASSWORD" ]; then
  TURN_PASSWORD=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 20 ; echo ''`
  echo "No TURN_PASSWORD set. Using randomly generated one: "$TURN_PASSWORD
fi

if [ "$DEBUG" = "true" ]; then
  LOG_LEVEL_OPTS=" -V"
  echo "Debug mode enabled."
fi

echo " "
echo "Your STUN and TURN server is now running"
echo "STUN Server   --> stun:$EXTERNAL_IP_ADDRESS:$TURN_PORT"
echo "TURN Server   --> turn:$EXTERNAL_IP_ADDRESS:$TURN_PORT"
echo "TURN username --> $TURN_USERNAME"
echo "TURN password --> $TURN_PASSWORD"
echo " "

echo "##### #### ### ## # STUN/TURN server log output # ## ### #### #####"

exec /usr/bin/turnserver -n -r defaultrealm --no-tls --no-dtls --no-cli \
--pidfile /var/tmp/turnserver.pid -l /var/tmp/stunturn.log \
-a -u $TURN_USERNAME:$TURN_PASSWORD \
-p $TURN_PORT -X $EXTERNAL_IP_ADDRESS $LISTENING_IP_ADDRESS_OPTS $LOG_LEVEL_OPTS
