[![<yaredd>](https://circleci.com/<gh>/<yaredd>/<udacityDevOps>.svg?style=svg)](https://app.circleci.com/pipelines/github/yaredd/udacityDevOps)

## Project Overview

This project is an assignment from the Udacity CloudDevOps cource Lesson 5.
This is a Flask app that predicts housing price in Boston.

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Getting Started

You can run this app as a standalone, in Docker, or in a Kubernetes cluster.

#### Running as a standalone app

Create a virtualenv and activate it. After checking out the repo to you laptop:

1. `python3 -m venv venv && source venv/bin/activate`
2. `pip install --upgrade pip && pip install -r requirements.txt`
3. python3 app.py
   This will open Flask app on port 80 (Note: you will need super user privileges to run this app on this port. Change the port to something else if you want to run it as a non-privileged user). You can run a prediction by running the shell script `make_prediction.sh`. **Don't forget to modify the `make_prediction.sh` so the port number in this file matches the port number in `app.py`**.
4. ./make_prediction.sh

#### Running in [Docker](https://docker.io)

Make sure you have installed docker and simply run the shell script `run_docker.sh`.

#### Running in [kubernetes](https://kubernetes.io/) cluster

Make sure you have `minikube` installed with `kubectl` and simply run the shell script `run_kubernetes.sh`. Follow instruction on the [Kubernetes](https://kubernetes.io/docs/tasks/tools/) docs page to install these Kubernetes tools.
