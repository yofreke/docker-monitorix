#!/bin/bash

if [ ! -z "$MONITORIX_PORT" ]; then
  MONITORIX_CONF="/etc/monitorix/monitorix.conf"
  sed -i -e "s/port = 8080/port = $MONITORIX_PORT/g" $MONITORIX_CONF
  sed -i -e "s/:8080/:$MONITORIX_PORT/g" $MONITORIX_CONF
fi

service monitorix restart

# Keep the container running
bash
