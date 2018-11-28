FROM hashicorp/terraform:light

ENV TFNOTIFY_VERSION=0.2.0

RUN wget -O - "https://github.com/mercari/tfnotify/releases/download/v${TFNOTIFY_VERSION}/tfnotify_v${TFNOTIFY_VERSION}_linux_amd64.tar.gz" \
   | tar zxvf - -C /tmp \
   && mv /tmp/tfnotify_v${TFNOTIFY_VERSION}_linux_amd64/tfnotify /bin

ENTRYPOINT []