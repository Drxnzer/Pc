#!/bin/bash

# Keep the server running, executing aman.sh repeatedly and serving it on port 8080
while true; do
    echo -ne "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\n"
    ./aman.sh
done | nc -l -p 8080 -q 1
