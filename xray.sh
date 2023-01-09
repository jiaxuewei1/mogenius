#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d92b53a8-fce2-4b7d-92c8-e7ff0fc268c3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

