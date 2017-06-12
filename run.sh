#!/bin/bash

/opt/ngrok/ngrokd \
    -httpAddr=":80" \
    -httpsAddr=":443" \
    -tunnelAddr=":4443" \
    -tlsCrt="/opt/ngrok/ssl.crt" \
    -tlsKey="/opt/ngrok/ssl.key" \
    -domain="lanout.tk" \
    -log-level="WARNING"

