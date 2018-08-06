DOCKER_BIN ?= `which docker`
DOCKER_COMPOSE ?= `which docker-compose`
TAG ?= "heycar/s3-sync:0.3.0"

.PHONY: build
build:
	$(DOCKER_BIN) build . -t $(TAG)

.PHONY: push
push:
	$(DOCKER_BIN) push $(TAG)

.PHONY: release
release: build push

.PHONY: run
run:
	$(DOCKER_COMPOSE) up
