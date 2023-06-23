TAG_NAME=senzing-with-chatgpt-notebook
WORKDIR=/workspaces/$(TAG_NAME)

build:
	docker build \
		--tag $(TAG_NAME) \
		.

run:
	docker run \
		--net=host \
		--env="OPENAI_API_KEY=$(OPENAI_API_KEY)" \
		--volume="$(PWD):$(WORKDIR)" \
		--detach \
		$(TAG_NAME)

shell:
	docker run \
		--net=host \
		--env="OPENAI_API_KEY=$(OPENAI_API_KEY)" \
		--volume="$(PWD):$(WORKDIR)" \
		--interactive \
		--tty \
		$(TAG_NAME) \
		bash

#
# Shell Commands (Inside Container)
#
test:
	pytest --cov server --cov-report term-missing -v -s tests

