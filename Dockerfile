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

ENV AWS_S3_BUCKET_URI="s3://foo/bar"
ENV CRON_SCHEDULE="0 1 * * *"
ENV PARAMS=""

ADD src/ /

CMD ["/start"]
