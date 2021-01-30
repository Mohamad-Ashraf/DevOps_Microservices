[![CircleCI](https://circleci.com/gh/MuhammadYasser2019/DevOps_Microservices.svg?style=svg)](https://app.circleci.com/pipelines/github/MuhammadYasser2019/DevOps_Microservices)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---
## Pre-Requisites to Run Locally

* Install Hadolint to lint Dockerfiles
    1. wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
    2. sudo chmod +x /bin/hadolint
* Install Docker Engine
* Install K8S Cluster "Use Minikube for Simplifications"

## Setup the Environment

* Clone the Project using 
    1. git clone https://github.com/MuhammadYasser2019/DevOps_Microservices.git
* Create a virtualenv and activate it
    1. python3 -m venv venv
    2. . venv/bin/activate
* Change directory to be under DevOps_Microservices 
* Run `make install` to install the necessary dependencies

### Running `app.py` and Getting in Running using Docker and K8S

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Upload Docker image: `./upload_docker.sh`
4. Run in Kubernetes: `./run_kubernetes.sh`
5. Run predictions: `./make_prediction.sh`
6. Get logs for the created pod using `kubectl logs python -n project`


### Importnant Files
1. .circleci/config.yml - This contains Circleci pipeline Configurations to lint the app and the dockerfile.
2. output_text_file - This directory contains a previous container and pod logs for a working demo.
4. app.py This is the python app which contains the predictions model. 
5. Dockerfile - The dockerfile needed to build the docker images.
6. make_prediction.sh - Bash script code for sending data to app to get predictions.
7. Makefile -  The File which consolidates all the needed commands for example " to lint app and dockerfile".
8. requirements.txt - Contains all the dependencies needed for the app.
10. run_docker.sh - Bash script to build and run the docker image.
11. run_kubernetes.sh - Bash script to install the docker image to kubernetes pod and setup port forwarding.
12. upload_docker.sh - Bash script to install the docker image to docker hub.