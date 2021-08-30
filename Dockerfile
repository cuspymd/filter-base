FROM nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04

# [update apt]
RUN rm /etc/apt/sources.list.d/* && apt-get update
RUN apt install -y build-essential libsm6 libxext6 libxrender-dev

# [install python3]
RUN apt install -y python3.6 python3-pip
