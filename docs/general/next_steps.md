# Suggestions for further development

### Isolate tensorflow from backend

The TinyMLaaS and TinyML-backend repositories both contain a branch called ```dockerize_tensorflow```. These branches contain unfinished development for a feature where the backend does not contain any machine learning libraries but only works as a relay for training and compiling machine learning models. The idea is, that the backend spins up a docker container that contains the machine learning library (currently Tensorflow) and uses it to train an compile models. The model files are then extracted from this Tensorflow container to the filesystem of the container where the backend is running. 

Compiling a tensorflow model for MCU works if there is a model in the tensorflow_models folder and database. Training a new model does not yet work. Some of the backend code is commented out and this feature is very much work in progress. 

The feature works with Docker in Docker (dind) using the [nestybox/sysbox runtime environment](https://github.com/nestybox/sysbox) which allows a container to run docker without privileged mode / giving access to local docker sockets. This is a bit complicated, but more secure than the alternatives. The same dind principle is also used for running the relay/bridge that is used to install and observe the MCU devices (see https://github.com/TinyMLaas/TinyML-MCU).

The ```dockerize_tensorflow``` branch contains a [Dockerfile](https://github.com/TinyMLaas/TinyMLaaS/blob/dockerize_tensorflow/backend_no_tf.Dockerfile) that sets up the Tensorflow docker image. In order to develop this feature, you need to work on both repositories TinyMLaaS and TinyML-backend simultaneously. The docker-compile in TinyMLaaS ```dockerize_tensorflow``` branch uses backend_no_tf.Dockerfile to pull the ```dockerize_tensorflow``` branch from the TinyML-backend repo.

Our FastAPI backend communicates with the docker image and containers using [Docker API](https://docs.docker.com/engine/api/) and more specifically the [Docker SDK for Python](https://docker-py.readthedocs.io/en/stable/index.html). The feature is implemented in the [tf_docker/compile.py](https://github.com/TinyMLaas/TinyML-backend/blob/dockerize_tensorflow/tf_docker/compile.py) backend module.


