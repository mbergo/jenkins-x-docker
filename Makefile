IMAGE_NAME=jenkins-x
TAG=latest

build:
	docker build -t $(IMAGE_NAME):$(TAG) .

run:
	docker run --rm -p 8181:8181 $(IMAGE_NAME):$(TAG)

