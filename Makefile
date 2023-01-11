IMAGE_NAME=ghcr.io/mbergo/jenkins-x-docker
TAG=release

build:
	docker build -t $(IMAGE_NAME):$(TAG) .

run:
	docker run --rm -p 8181:8181 $(IMAGE_NAME):$(TAG)

