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

ENV AWS_ACCESS_KEY_ID=,AWS_SECRET_ACCESS_KEY=,AWS_DEFAULT_REGION=,AWS_S3_BUCKET_URI=,CRON_SCHEDULE="0 1 * * *",PARAMS=

ADD src/ /

CMD ["/start"]
