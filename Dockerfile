FROM ubuntu:14.04

MAINTAINER fengqi lyf362345@gmail.com

ENV NGROK /opt/ngrok
ENV DOMAIN fengqi.tk

EXPOSE 22 80 443 4443

COPY run.sh $NGROK/
COPY bin/ngrokd $NGROK/
COPY fengqi.tk.crt $NGROK/ssl.crt
COPY fengqi.tk.key $NGROK/ssl.key

RUN /usr/bin/apt-get install openssh-server -y
RUN mkdir ~/.ssh
RUN touch ~/.ssh/authorized_keys
RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDcvRBc0BPjhV87CUcGbT3ziNM4IleFP3HcnbPC1grC0NhVAvlJ0k1+K3llQB9aIYtufkyAUE+YJv+x6xz+2lrNI5J3jE6g35X4BaYvkBTe95eROfPuHTxPQj5+bapLlrJHag2SxxOCauk4kOKGO/bDjNinCogxjuLPGufcAsPv205086XvXkhWM3Qb81MX3d8udxE+rpgU+5JW0RUPFQwV3KD7n0CwaMtL25ELZgRRLKMiSSlupkleL1e/NAZP03w5nCC0SF59rrb+IvmWqCKFRqCmUyrD+rlZgZBelxptl3RQA7/hgNfCx2ouij+j3lWu8fmQSbBkSxGdQt69o6+aD7BXmzdXVKLd2KdnWrZQZynXqfjWPjrTOwpzhEG9toktRGUo1ArluejzbIob5Ig+AkBGZq/qKwhBRFNDeNrwzuliSlHqOQhHtydPDNTDjnvcpN1wYkF/PwajgFthpt2C8w92RrmkAIQuycA/RBRqEKjur0LHWIQd/OTlUe6/IDE= id_rsa_3072" > ~/.ssh/authorized_keys

RUN chmod +x $NGROK/run.sh

CMD $NGROK/run.sh

