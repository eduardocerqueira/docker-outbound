#!/usr/bin/env bash

LINE="=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
URL="http://www.google.com ipinfo.io/ip"
CONTAINER_NAMES="app1 app2"

function connect(){
    # these vars are declared in container, see compose.yaml
    echo "testing outbound traffic in container: $CONTAINER_NAME"
    echo ">> $CONTAINER_MSG"
    
    for test_url in $URL
    do
        echo "URL: $test_url"
        curl --max-time 5 -Is "$test_url" | head -n 1
        echo
    done
}

echo
echo $LINE
connect
