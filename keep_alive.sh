#!/bin/bash

while true; do
    echo -ne "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\n"
    ./aman.sh
done | socat TCP-LISTEN:8080,reuseaddr,fork EXEC:./aman.sh
