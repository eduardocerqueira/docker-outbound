#!/usr/bin/env bash

docker cp ./test_outbound.sh app1:/tmp/test_outbound.sh
docker cp ./test_outbound.sh app2:/tmp/test_outbound.sh

docker exec -it app1 bash -c ". /tmp/test_outbound.sh"
docker exec -it app2 bash -c ". /tmp/test_outbound.sh"

