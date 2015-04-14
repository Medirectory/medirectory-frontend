set -e

exec ember serve --proxy http://$MEDIRECTORY_PORT_3000_TCP_ADDR:$MEDIRECTORY_PORT_3000_TCP_PORT

exec "$@"
