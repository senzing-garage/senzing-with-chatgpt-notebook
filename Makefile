TAG_NAME=senzing-with-chatgpt-notebook
WORKDIR=/workspaces/$(TAG_NAME)

build:
	docker build \
		--tag $(TAG_NAME) \
		.

run:
	docker run \
		--detach \
		--env="OPENAI_API_KEY=$(OPENAI_API_KEY)" \
		--name="senzing-with-chatgpt-notebook" \
		--net=host \
		--rm \
		--volume="$(PWD):$(WORKDIR)" \
		$(TAG_NAME)

shell:
	docker run \
		--env="OPENAI_API_KEY=$(OPENAI_API_KEY)" \
		--interactive \
		--net=host \
		--rm \
		--tty \
		--volume="$(PWD):$(WORKDIR)" \
		$(TAG_NAME) \
		bash

stop:
	docker stop senzing-with-chatgpt-notebook

#
# Shell Commands (Inside Container)
#
test:
	pytest --cov server --cov-report term-missing -v -s tests

