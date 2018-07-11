FROM alpine:3.8

MAINTAINER heycar Engineering <team-engineering@hey.car>

# Install python/pip
RUN apk --no-cache add \
      py-pip \
      python

# Install awscli
RUN  pip install --upgrade \
      pip \
      awscli

VOLUME ["/data"]

ENV FROM="s3://foo/bar"
ENV TO="/data"
ENV CRON_SCHEDULE="0 1 * * *"
ENV PARAMS=""

ADD src/ /

CMD "/start"
