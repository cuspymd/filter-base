FROM nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04
ARG DEBIAN_FRONTEND=noninteractive

# [update apt]
RUN rm /etc/apt/sources.list.d/* && apt-get update
RUN apt install -y build-essential libsm6 libxext6 libxrender-dev software-properties-common

# [install python3.9]
RUN add-apt-repository ppa:deadsnakes/ppa && apt install -y python3.9 python3.9-distutils python3-pip
