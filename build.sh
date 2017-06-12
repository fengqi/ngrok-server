#!/bin/bash

cp lanout.tk.crt assets/client/tls/ngrokroot.crt
CGO_ENABLED=0 make release-server
docker build -f Dockerfile -t ngrokd .
docker-compose up -d

