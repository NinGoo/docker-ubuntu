all: build

build:
	@docker build --tag=ningoo/ubuntu:latest .

release: build
	@docker build --tag=ningoo/ubuntu:$(shell cat VERSION) .
