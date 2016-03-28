#!/bin/bash

mkdir -p /var/run/sshd && /usr/sbin/sshd && /opt/ngrok/ngrokd -httpAddr=":80" -httpsAddr=":443" -tunnelAddr=":4443" -tlsCrt="/opt/ngrok/ssl.crt" -tlsKey="/opt/ngrok/ssl.key" -domain="ngrok.fengqi.me" -log-level="WARNING"

