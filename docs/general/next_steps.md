# Suggestions for further development

### Work in progress: Isolate tensorflow from backend

The TinyMLaaS and TinyML-backend repositories both contain a branch called ```dockerize_tensorflow```. These branches contain unfinished development for a feature where the backend does not contain any machine learning libraries but only works as a relay for training and compiling machine learning models. The idea is, that the backend spins up a docker container that contains the machine learning library (currently Tensorflow) and uses it to train an compile models. The model files are then extracted from this Tensorflow container to the filesystem of the container where the backend is running. 

Compiling a tensorflow model for MCU works if there is a model in the tensorflow_models folder and database. Training a new model does not yet work. Some of the backend code is commented out and this feature is very much work in progress. 

The feature works with Docker in Docker (dind) using the [nestybox/sysbox runtime environment](https://github.com/nestybox/sysbox) which allows a container to run docker without privileged mode / giving access to local docker sockets. This is a bit complicated, but more secure than the alternatives. The same dind principle is also used for running the relay/bridge that is used to install and observe the MCU devices (see https://github.com/TinyMLaas/TinyML-MCU).

The ```dockerize_tensorflow``` branch contains a [Dockerfile](https://github.com/TinyMLaas/TinyMLaaS/blob/dockerize_tensorflow/backend_no_tf.Dockerfile) that sets up the Tensorflow docker image. In order to develop this feature, you need to work on both repositories TinyMLaaS and TinyML-backend simultaneously. The docker-compile in TinyMLaaS ```dockerize_tensorflow``` branch uses backend_no_tf.Dockerfile to pull the ```dockerize_tensorflow``` branch from the TinyML-backend repo.

Our FastAPI backend communicates with the docker image and containers using [Docker API](https://docs.docker.com/engine/api/) and more specifically the [Docker SDK for Python](https://docker-py.readthedocs.io/en/stable/index.html). The feature is implemented in the [tf_docker/compile.py](https://github.com/TinyMLaas/TinyML-backend/blob/dockerize_tensorflow/tf_docker/compile.py) backend module.

## Database

### Production ready database

The backend uses [SQLite](https://www.sqlite.org/index.html). However, as SQlite is so lightweight, there are drawbacks, that affect the usage of the software. First of all, SQLite is not meant for storing big files. Because of this, all datasets, models and compiled models are stored **outside** the database in directories, and the database contains the **path** to the files. This is not ideal, as the backend can get messy with all the directories and if permanent storage is required outside the docker container, all of these volumes need to be mounted to the docker container.

A SQLite database is also a single file, meaning that accidentally deleting the database or misplacing it is more common.

Because of these drawbacks, we would suggest changing the used database from SQLite to something more robust and production ready, such as [MariaDB](https://mariadb.org/) or [PostgreSQL](https://www.postgresql.org/). Larger files can be stored in these databases and it is easy to mount one database rather than multiple different locations for all different saving locations.

### Move saving of models and datasets to database

As mentioned in the previous [section](#Change database for more production ready database), all datasets and models are stored outside the database. With the change of the database, it would be better to save all these files in the database.


## Datasets

### Downloading/uploading datasets (as zip)
Currently, you can only upload and append to datasets. It's not possible to view or download it anyway. The application should have way to download the entire dataset to your machine (propably as zip so it works on both Windows and Linux).

At the moment you can only send bulk of pictures of to the app to create a dataset. It's propably good idea to allow sending zips and creating datasets from them. You propably need to make sure that 
- it's a valid dataset with working images
- the saved dataset keeps same folder structure as the send zip
- the user doesn't send malicious data

### Editing, deleting and managing datasets

Currently, only adding and appending datasets is supported. The user should propably be able to manage the datasets better. First you should be able to remove unwanted datasets. Second, the user should be able to make folder structure for the datasets and edit them for labeling purposes [see this tutorial for example how the data is structured](https://www.tensorflow.org/tutorials/images/classification#download_and_explore_the_dataset).
Being able to simply download the datasets,editing it locally, removing it from the app and readding it allows for the user to edit it. After that, if you want to enhance the user experience one idea is to add better editing options to the app itself: Being able remove photos, being able to add photos, creating new folders, removing folders.

## CLI

### Autogenerate end-to-end CLI from OpenAPI YAML

The current version of the [CLI](https://github.com/TinyMLaas/TinyML-CLI) is autogenerated with the exception of [services](https://github.com/TinyMLaas/TinyML-CLI/tree/main/services) and [tiny_mlaas.py](https://github.com/TinyMLaas/TinyML-CLI/blob/main/tinyml_cli.py).

End-to-end autogeneration could be done after publishing services and tiny-mlaas.py as a Python package and having it as a dependency. See instructions: https://typer.tiangolo.com/tutorial/package/.

A preliminary idea for implementing the end-to-end generation is following:

1. Publish a package that contains the forementioned files

2. OpenAPI yaml-file is needed for generating the CLI tool. Get it by browsing to backend_url/openapi.json. Convert the json to yaml with for example: https://editor.swagger.io/

The repository for autogeneration would consist of the yaml -file from step 2 and requirements.txt -file with the package published in step 1 (in addition to current requirements). With these prerequisites the steps for end-to-end generation could be:

1. Clone repo

2. Install the generator tool with: npm install @openapitools/openapi-generator-cli -g

3. Generate the client with npx @openapitools/openapi-generator-cli generate -i file.yaml -g python -o *output_path*
     - file.yaml is the yaml-file in the repo
     - output path should probably be the root directory of the cloned CLI-repository

4. Install the requirements: pip install -r requirements.txt

5. Finish the installation with: python3 setup.py install

For usage instructions see: https://github.com/TinyMLaas/TinyML-CLI#usage

Misc: if requirements.txt is overwritten by the generator use a different name, interface_requirements.txt etc (remember to install these in step 4). Using the CLI package might differ from using it locally, see Typer documentation: https://typer.tiangolo.com/tutorial/package/
