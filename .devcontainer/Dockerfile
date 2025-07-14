FROM continuumio/miniconda3:latest

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential cmake libeigen3-dev libboost-all-dev liburdfdom-tools git wget sudo \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN conda create -n robot-env python=3.11 -y

SHELL ["conda", "run", "-n", "robot-env", "/bin/bash", "-c"]

RUN conda config --add channels conda-forge && \
    conda config --set channel_priority strict && \
    conda install -y scipy && \
    conda install -y pinocchio crocoddyl example-robot-data || \
    echo "Some packages not found in conda, consider pip fallback"

WORKDIR /workspace

CMD ["conda", "run", "-n", "robot-env", "/bin/bash"]

