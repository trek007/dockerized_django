FROM python:3.8.13-slim-buster

# Set PYTHONUNBUFFERED to 1 to ensure that Python output is sent directly to the terminal without buffering. 
# This is useful for logging purposes in containers where you want real-time output.
ENV PYTHONUNBUFFERED 1

# Set PYTHONDONTWRITEBYTECODE to 1 to prevent Python from writing .pyc files to disk. 
# This is useful in containerized environments to avoid unnecessary writes to the filesystem.
ENV PYTHONDONTWRITEBYTECODE 1


WORKDIR /app

COPY . /app/

RUN apt-get update

COPY requirement.txt .

RUN pip3 install -r requirement.txt





