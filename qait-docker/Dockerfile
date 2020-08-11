FROM tiangolo/python-machine-learning:cuda9.1-python3.6

WORKDIR /app
COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    pip install https://github.com/Microsoft/TextWorld/archive/rebased-interactive-qa.zip 

RUN python -m spacy download en

RUN conda update -n base -c defaults conda && \
    conda install pytorch torchvision cudatoolkit=9.2 -c pytorch

RUN apt-get update && \
    apt-get install -y tmux

COPY qait_public .
COPY scripts ./scripts
COPY configs ./configs

ENTRYPOINT [ "/bin/sh" ]
