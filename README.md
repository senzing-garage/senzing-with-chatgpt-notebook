# Senzing ChatGPT Notebook Demo

A demo of Senzing Conversational AI for Entity Resolution announced in this [blog post](https://senzing.com/first-conversational-ai-for-entity-resolution/)!

## Features

- Show examples of entities with either matches, possible matches, or relationships.
- Show details about an entity.
- Show step-by-step details of how an entity was resolved.
- Search for entities by entity attributes.

## Prerequisite

- OpenAI API Key ([OpenAI Authentication](https://platform.openai.com/docs/api-reference/authentication))
- Docker

## Quickstart

1. Start a jupyter notebook server via docker:
  * Set the environment variable `OPENAI_API_KEY` to your OpenAI API Key
  * `make build`
  * `make run`
2. Open the demo notebook
  * Go to: http://localhost:8888/notebooks/demo.ipynb

## Data

The included SQLite db is already preloaded with the [truth-sets data](https://github.com/Senzing/truth-sets).

If you want to use your own data, you can either:
- Follow the [Quickstart for Docker](https://senzing.zendesk.com/hc/en-us/articles/12938524464403-Quickstart-For-Docker) guide.
- Modify `SENZING_ENGINE_CONFIGURATION_JSON` in [devcontainer.env](https://github.com/kakugawa/senzing-entity-resolution-plugin/blob/main/.devcontainer/devcontainer.env).
