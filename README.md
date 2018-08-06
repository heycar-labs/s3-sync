# s3-sync [![Docker Pulls](https://img.shields.io/docker/pulls/heycar/s3-sync.svg)](https://hub.docker.com/r/heycar/s3-sync/) [![Github Tag](https://img.shields.io/github/tag/hey-car/s3-sync.svg)](https://github.com/hey-car/s3-sync) [![Github Tag](https://img.shields.io/github/license/hey-car/s3-sync.svg)](https://github.com/hey-car/s3-sync)
> Minimalist S3 bucket from/to container synchronizer

The goal is to synchronize state from/to a S3 bucket periodically and persist on a shared volume

## Local

In order to run locally, you :

```
make build
```

Then you must edit the `docker-compose.yml` adding your env constratints, then finally:

```
make run
```

### Environment

* `FROM` - default `"s3://foo/bar"`
* `TO` - default `"/data"`
* `NOW` - boolean default `"false"`
* `CRON_SCHEDULE` - default `"0 1 * * *"`
* `PARAMS` - e.g.: `"--size-only"`, default `""`

And of course, the AWS credentials:

* `AWS_ACCESS_KEY_ID`
* `AWS_SECRET_ACCESS_KEY`
* `AWS_DEFAULT_REGION`

## Contributing

Remember to update the tag in the `Makefile`, use the same tag for git.

Then, run: `make release`, which will `build` and `push` the new docker image to dockerhub.

## Credits

Heavily inspired by [futurevision/docker-aws-s3-sync](https://github.com/futurevision/docker-aws-s3-sync/).
