FROM ubuntu:22.04 as base
FROM jupyter/scipy-notebook

WORKDIR /project

RUN mkdir /project/model_dir

ENV MODEL_DIR=/project/model_dir
ENV MODEL_FILE_LDA=MODEL_LDA.pkl
ENV MODEL_FILE_NN=MODEL_NN.pkl

RUN command pip install joblib
# RUN command pip install pickle

COPY train.csv ./train.csv
COPY test.csv ./test.csv

COPY train.py ./train.py
COPY inference.py ./inference.py

RUN python3 train.py
