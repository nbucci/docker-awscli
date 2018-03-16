FROM alpine:3.7

LABEL mantainer = "Nicola Bucci <nicola.bucci82@gmail.com>"

RUN apk --no-cache add \
      bash \
      bash-completion \
      groff \
      less \
      curl \
      jq \
      py-pip \
      python \
      gettext \
      zip \
      openssh && \
      pip install --upgrade \
      awscli \
      pip \
      python-dateutil && \ 
      mkdir ~/.aws && chmod 700 ~/.aws

VOLUME ["~/.aws"]

ENTRYPOINT ["aws"]

CMD ["help"]
