# Senzing ChatGPT Notebook Demo

If you are beginning your journey with
[Senzing](https://senzing.com/),
please start with
[Senzing Quick Start guides](https://docs.senzing.com/quickstart/).

You are in the
[Senzing Garage](https://github.com/senzing-garage)
where projects are "tinkered" on.
Although this GitHub repository may help you understand an approach to using Senzing,
it's not considered to be "production ready" and is not considered to be part of the Senzing product.
Heck, it may not even be appropriate for your application of Senzing!

## Synopsis

A demo of Senzing Conversational AI for Entity Resolution announced in this
[blog post](https://senzing.com/first-conversational-ai-for-entity-resolution/).

## Features

1. Show examples of entities with either matches, possible matches, or relationships.
1. Show details about an entity.
1. Show step-by-step details of how an entity was resolved.
1. Search for entities by entity attributes.

## Quickstart

Simply view the Python notebook which shows the fully executed Python.

1. Visit [demo.ipynb](demo.ipynb)

## Run demonstation locally

1. Prerequisites:
    1. [OpenAI GPT-4 API Access](https://openai.com/waitlist/gpt-4-api)
        1. [How can I access GPT-4?](https://help.openai.com/en/articles/7102672-how-can-i-access-gpt-4)
    1. An [OpenAI API Key](https://platform.openai.com/account/api-keys) for
       [OpenAI Authentication](https://platform.openai.com/docs/api-reference/authentication)
    1. [docker](https://github.com/senzing-garage/knowledge-base/blob/main/WHATIS/docker.md)
    1. [git](https://github.com/senzing-garage/knowledge-base/blob/main/WHATIS/git.md)
    1. [make](https://github.com/senzing-garage/knowledge-base/blob/main/WHATIS/make.md)

1. Clone the repository.
   Example:

    ```console
    git clone https://github.com/senzing-garage/senzing-with-chatgpt-notebook.git
    ```

    **Note:** The following example commands are issued from the repository directory.

1. Build the Docker image.
   Example:

    ```console
    make build
    ```

1. Set the environment variable `OPENAI_API_KEY` to your OpenAI API Key.
   Example:

    ```console
    export OPENAI_API_KEY=sk-A1a1...Z9z9
    ```

1. Run the Docker container.
   Example:

    ```console
    make run
    ```

1. Open the Jupyter notebook demonstration.
    1. Visit [http://localhost:8888/notebooks/demo.ipynb](http://localhost:8888/notebooks/demo.ipynb)

1. In the Jupyter notebook
    1. From the menu bar, select `Kernel` > `Restart & Run All`.
    1. Click the "Restart and Run All Cells" button.
1. View the results at the bottom of the Jupyter Notebook page.

## Data

The demonstration includes a SQLite database already preloaded with the
[truth-sets data](https://github.com/senzing-garage/truth-sets).

If you want to use your own data, you can either:

1. Follow the [Quickstart for Docker](https://senzing.zendesk.com/hc/en-us/articles/12938524464403-Quickstart-For-Docker) guide.
1. Modify
   [SENZING_ENGINE_CONFIGURATION_JSON](https://github.com/senzing-garage/knowledge-base/blob/main/lists/environment-variables.md#senzing_engine_configuration_json)
   in the
   [Dockerfile](https://github.com/senzing-garage/senzing-with-chatgpt-notebook/blob/main/Dockerfile).

## Cleanup

1. Stop the Docker container.
   Example:

    ```console
    make stop
    ```
