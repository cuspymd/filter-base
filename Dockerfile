FROM nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /root
# [update apt]
RUN rm /etc/apt/sources.list.d/* && apt-get update
RUN apt install -y build-essential libsm6 libxext6 libxrender-dev software-properties-common

# [install conda]
COPY Miniconda3-latest-Linux-x86_64.sh .
RUN bash Miniconda3-latest-Linux-x86_64.sh -b

