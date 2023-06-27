# Architecture Guide

This page contains general information about the applications architecture and how different parts of the application work and communicate with each other.

## Key Components
- ML model training 
- Data storage & loading
- ML model quantization and optimization
- ML model compilation
- Firmware packaging

## Enabling Technologies
- Tensorflow;
- Docker
- Streamlit
- Aws S3

## What Has Been Implemented?

![General flow of the service](images/asd.png)

- Right now uploading the firmware is supported via uploading the firmware to Dockerhub and notifying the Bridging server to pull the docker image and upload the firmware via Serial on to the device.
- TODO regarding the above picture containing all the elements of the application is the ability to update Over-The-Air for Wifi-enabled devices.

### Implemented Features
- ML model training
- Data storage to LocalStack/S3
- ML model optimization and compression
- Supported devices Arduino Nano 33 BLE Sense and RPI pico
- Querying prediction results from the end-device
- Refer to the actual application and the above picture for more information.

## Neural Network Architecture

![Current NN Architecture](images/model.tflite.png)

When training a Neural Network for TinyML, there are a few things to keep in mind to ease the process. The resulting model must fit into the device.

Things that affect the resulting models size include:
- Amount of layers used in the model. Fewer layers usually results in smaller sized models.
- Used OPs, e.g., Convolution layers can take up quite a bit of space.
- Quantization is almost necessary for the model to compressed into a usable size.

TinyML related tips
- OPs used in the keras model training must also be supported in tflite-micro.
- [Netron](netron.app), Use netron to visualize models and check that you have all the OPs enabled in your Firmware. Every OP must be declared in order for the model to work.

Misc.
- [Tensorflow](https://www.tensorflow.org/tutorials/images/classification) has extensive amount of information and tutorials regarding almost all necessary things when it comes to the application's ML related stuff.

