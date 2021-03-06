.PHONY = all build clean

CONTAINER = lynxtp/openjdk-jdk
VERSION = 8

all: build

.built: Makefile Dockerfile
	@docker build --pull -t $(CONTAINER):$(VERSION) .
	@touch $@

build: .built

clean:
	@rm -f .built
