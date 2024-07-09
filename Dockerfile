FROM senzing/senzingapi-runtime:3.10.3

USER root

#
# Required Packages
#
RUN apt-get update \
  && apt-get install -y build-essential wget \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

#
# Miniconda3
#
ENV CONDA_DIR=/opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
  && /bin/bash ./Miniconda3-latest-Linux-x86_64.sh -b -p $CONDA_DIR \
  && rm ./Miniconda3-latest-Linux-x86_64.sh

ENV PATH=$CONDA_DIR/bin:$PATH

#
# Project
#
WORKDIR /workspaces/senzing-with-chatgpt-notebook
COPY . /workspaces/senzing-with-chatgpt-notebook

ENV SENZING_ENGINE_CONFIGURATION_JSON='{"PIPELINE" : {"CONFIGPATH" : "/etc/opt/senzing", "RESOURCEPATH" : "/opt/senzing/g2/resources", "SUPPORTPATH" : "/opt/senzing/data" }, "SQL" : { "CONNECTION" : "sqlite3://na:na@/workspaces/senzing-with-chatgpt-notebook/var/sqlite/G2C.db" }}'

RUN conda env update

HEALTHCHECK CMD echo "healthcheck placeholder"

USER 1001

CMD ["jupyter", "notebook", "--config", ".jupyter/jupyter_notebook_config.py"]
