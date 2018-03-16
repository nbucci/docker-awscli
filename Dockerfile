FROM alpine:3.7

MAINTAINER Nicola Bucci <nicola.bucci82@gmail.com>

ARG AWS_CREDENTIAL_KEY
ARG AWS_CREDENTIAL_SECRET

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
      openssh

RUN pip install --upgrade \
      awscli \
      pip \
      python-dateutil
    
RUN mkdir ~/.aws && chmod 700 ~/.aws

COPY credentials /tmp/credentials

RUN envsubst <"/tmp/credentials"> ~/.aws/credentials

VOLUME ["~/.aws"]

CMD ["/bin/bash", "--login"]
