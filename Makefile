DOCKER_TAG = latest

.PHONY: default
default: build

.PHONY: build
build:
	docker build -t hypothesis/postgres-s3-backup:$(DOCKER_TAG) .
