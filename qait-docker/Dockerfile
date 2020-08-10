FROM tiangolo/python-machine-learning:cuda9.1-python3.6

RUN pip install --upgrade pip && \
    pip install numpy==1.16.4 && \
    pip install https://github.com/Microsoft/TextWorld/archive/rebased-interactive-qa.zip 

RUN pip install -U spacy && \
    python -m spacy download en

RUN pip install tqdm h5py visdom pyyaml

RUN conda update -n base -c defaults conda && \
    conda install pytorch torchvision cudatoolkit=9.2 -c pytorch

COPY qait_public /app
COPY scripts /app/scripts
WORKDIR /app

ENTRYPOINT sh
