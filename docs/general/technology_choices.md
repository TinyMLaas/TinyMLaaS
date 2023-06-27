# Technological choices

This document is meant to answer why certain technological choices have been made and why certain frameworks have been chosen.

## Main

The `TinyMLaaS-main` -repository is meant for mostly building the whole software with [docker](https://www.docker.com/) and documentation. However, some development is also done in this repository. All tensorflow modules are coded here in [Jupyter notebooks](https://jupyter.org/).

As jupyter notebooks can not be used as modules in python, they need to be exported into python modules. This is done with [NBDEV](https://nbdev.fast.ai/). Nbdev also automatically creates documentation from the jupyter notebooks and deploys them to [Github pages](https://tinymlaas.github.io/TinyMLaaS/)

Running the software is meant to be done with *docker*. Docker allows running the software on different computers, without the software being platform spesific. Also, all the dependencies required for the software do not need to be installed on the host, rather, they will all be installed in the seperate *docker container*. If you are not familiar with docker, check out University of Helsinkis course [Devops with Docker](https://devopswithdocker.com/) materials to get a basic understanding of docker.

## Frontend

The frontend of the software is build with [Streamlit](https://streamlit.io/). This is done to make the development process faster, as this frontend is mainly meant for demo purposes. Streamlit makes it easy to create good looking websites, however, there isn't much room for cutomization and some features can be quite difficult to create.

There is still a dependecy on `usbutils`. This will be talked more about in the [Bridge-section](#Bridge)

## Backend

## Bridge
