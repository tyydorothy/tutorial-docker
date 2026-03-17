# Dockerfile
# A text file that a set of instruction for building docker image.


# base image with conda pre-installed
FROM condaforge/miniforge3:latest

# install make, such that make command can be used inside docker
# RUN apt-get update && apt-get install -y make

# set working directory inside container
WORKDIR /data

# copy environment file into container
COPY environment.yaml .

# RUN: exec cmd that build and config the Docker image
RUN conda env create -f environment.yaml

# make conda environment activate automatically when image is built
RUN echo "conda activate tut-docker" >> ~/.bashrc

# CMD: specify the default command to run when a container is started from the Docker image
CMD ["/bin/bash"]

