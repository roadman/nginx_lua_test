#!/bin/sh
RES_OK="source[1234567890abcdefghijklmnopqrstuvwxyz], encode[313233343536373839306162636465666768696a6b6c6d6e6f707172737475767778797a], decode[1234567890abcdefghijklmnopqrstuvwxyz], result[OK]"

RES=`curl -s http://localhost:8080/hexdigest/`

if [ "$RES_OK" = "$RES" ]; then
    echo "check ok!! => $RES"
else
    echo "check ng!! => $RES"
fi
