FROM nvidia/cuda:10.1-base-ubuntu16.04
FROM continuumio/anaconda3
WORKDIR /app
COPY environment.yml .
RUN conda update --all && conda env create -f environment.yml
COPY . /app
