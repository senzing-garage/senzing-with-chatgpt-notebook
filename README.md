# Senzing ChatGPT Notebook Demo

A demo of Senzing Conversational AI for Entity Resolution announced in this [blog post](https://senzing.com/first-conversational-ai-for-entity-resolution/)!

## Features

- Show examples of entities with either matches, possible matches, or relationships.
- Show details about an entity.
- Show step-by-step details of how an entity was resolved.
- Search for entities by entity attributes.

## Prerequisite

1. OpenAI API Key ([OpenAI Authentication](https://platform.openai.com/docs/api-reference/authentication))
1. [Docker](https://github.com/Senzing/knowledge-base/blob/main/WHATIS/docker.md)
1. [Make](https://github.com/Senzing/knowledge-base/blob/main/WHATIS/make.md)

## Quickstart

1. Start a jupyter notebook server via docker:

    1. Set the environment variable `OPENAI_API_KEY` to your OpenAI API Key.
       Example:

        ```console
        export OPENAI_API_KEY=sk-A1a1...Z9z9
        ```

    1. Build the Docker image.
       Example:

        ```console
        make build
        ```

    1. `make run`

2. Open the demo notebook

- Go to: <http://localhost:8888/notebooks/demo.ipynb>

## Data

The included SQLite db is already preloaded with the [truth-sets data](https://github.com/Senzing/truth-sets).

If you want to use your own data, you can either:

- Follow the [Quickstart for Docker](https://senzing.zendesk.com/hc/en-us/articles/12938524464403-Quickstart-For-Docker) guide.
- Modify `SENZING_ENGINE_CONFIGURATION_JSON` in [devcontainer.env](https://github.com/kakugawa/senzing-entity-resolution-plugin/blob/main/.devcontainer/devcontainer.env).

## Cleanup

1. Stop the Docker container.
   Example:

    ```console
    make stop
    ```
