FROM ubuntu:14.04

MAINTAINER fengqi lyf362345@gmail.com

ENV NGROK /opt/ngrok
ENV DOMAIN fengqi.ml

EXPOSE 80 443 4443

COPY run.sh $NGROK/
COPY bin/ngrokd $NGROK/
COPY fengqi.ml.crt $NGROK/ssl.crt
COPY fengqi.ml.key $NGROK/ssl.key

RUN chmod +x $NGROK/run.sh
CMD $NGROK/run.sh

