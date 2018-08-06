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

# Mount default volume
VOLUME ["/data"]

# Set default configs
ENV FROM="s3://foo/bar"
ENV TO="/data"
ENV CRON_SCHEDULE="0 1 * * *"
ENV NOW="false"
ENV PARAMS=""

# Add the scripts
ADD src/ /

CMD "/start"
