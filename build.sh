#!/bin/bash

git clone https://github.com/inconshreveable/ngrok.git ngrok

cd ngrok
cp ../lanout.tk.crt ngrok/assets/client/tls/ngrokroot.crt
CGO_ENABLED=0 make release-server
cd ../

docker build -f Dockerfile -t ngrokd .
docker-compose up -d

