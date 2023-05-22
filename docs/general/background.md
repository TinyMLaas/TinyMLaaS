# Background information and some literature sources

## Federated learning in TinyML

TinyML combines ML, mathematical optimization and tiny IoT embedded systems. TinyML is an effective method to analyze real-world data continuously, without the resource overhead of traditional ML hardware. [TinyFedTL](https://ieeexplore.ieee.org/abstract/document/9767250) is the first open-sources implementation of federated learning (FL) in IoT containing microcontroller unit (MCU) and small CPU based devices. TinyFedTL uses transfer learning (TL) to demonstrate effective privacy-centric FL on devices with a small memory footprint (less than 1 MB). Researchers and engineers may open up data in various fields to gain insights for improving life quality or user experience without sacrificing privacy.

While recent progress in ML frameworks has made it possible to perform inference with models using cheap, tiny devices, the training of the models is typically done separately on powerful computers. This provides the training process abundant CPU and memory resources to process large stored datasets. However, it is possible to train the machine learning model directly on the microcontroller and extend the training process with federated learning. [On-device training](https://www.mdpi.com/2079-9292/11/4/573) has been illustrated with keyword spotting task. Experiments were conducted with real devices to characterize the learning behaviour and resource consumption for various hyperparameters and federated learning configurations. The observation was, that when training locally with fewer data, more frequent federated learning rounds reduced the training loss faster, but with the cost of higher bandwidth usage and longer training time. The results indicated that depending of the application, the trade-off between the requirements and the resource usage of the system needs to be determined.

## Edge Impulse

[Edge Impulse](https://www.edgeimpulse.com/) is the leading development platform for ML on edge devices. It is free for developers. With Edge Impulse one can:
- build advanced embedded ML apps
- build custom datasets rapidly
    - collect sensor, audio or camera data from devices, files or cloud integrations
    - use automatic labeling tools such as object detection and audio segmentation
    - use Edge Impulse cloud infrastructure to set up and run reusable scripted operations that transform the input data on large sets of data in parallel
    - integrate deployment pipelines, CI/CD tools and custom data sources with open APIs
- develop models and algortihms
    - with prebuilt DSP [(Digital Signal Processors)](https://www.analog.com/en/design-center/landing-pages/001/beginners-guide-to-dsp.html) and ML blocks
    - hardware decisions can be made on device performance and Flash/RAM on every step
    - DSP feature extraction algorithms can be customized
    - custom machine learning models with [Keras APIs](https://keras.io/)
    - use visualized insights on datasets, model performance and memory to fine-tune the production model
- optimize models and algorithms
    - [EON TUNER](https://www.edgeimpulse.com/blog/introducing-the-eon-tuner-edge-impulses-new-automl-tool-for-embedded-machine-learning) for finding balance between DSP configurations and model architecture, budgeted against memory and latency constraints
    - [EON Compiler](https://www.edgeimpulse.com/blog/introducing-eon) for lighter and faster neural networks with equal accuracy
- have full visibility across the whole ML pipeline
    - complete access to data attributes, DSP algorithms, model hyperparameters throughout whole development lifecycle 
- test model performance accurately
    - virtual cloud hardware simulation framework to get performance and accuracy metrics before deploying on any physical device
    - model performance can be evaluated with live classification
        - devices, automated ML pipeline testing, integration with the testing framework
- deploy easily on any edge target
    - optimize source code by generating optimized embedded libraries and applications for any edge device
    - build ready-to-go binaries with selected development boards supported by Edge Impulse with special firmware
    - without OS or hardware dependencies and compile to nearly anything
    - make digital twin by re-deploying cloud-hosted ML projects to any hardware target on the fly
- benefit from access and integrations to the leading hardware partner ecosystem from MCUs to MPUs and GPUs including acceleration
    - Arduino
    - Himax
    - OpenMV
    - Nvidia
    - Nordic semiconductor
    - Raspberry Pi
    - Silicon Labs
    - Sony
    - ST
    - Syntiant
    - Texas Instruments

## Arduino and Wiring

[Arduino](https://www.arduino.cc/) is an open-source electronics platform intended for anyone to make interactive projects. It is based on easy-to-use hardware and software. [Arduino boards can](https://www.arduino.cc/en/Guide/Introduction)
- read inputs: light on a sensor, finger on a button, twitter message
- turn inputs into outputs: activate motor, turn on a LED, publish something online
- be instructed what to do by sending a set of instructions to the microcontroller on the board
    - using Arduino programming language (based on [Wiring](https://en.wikipedia.org/wiki/Wiring_%28development_platform%29)) and the Arduino Software (IDE)  (based on [Processing](https://www.arduino.cc/education/visualization-with-arduino-and-processing), an open source integrated development environment (IDE) like the Arduino IDE)

Because of simple and accessible user experience Arduino has been used in thousands of projects and applications by a worldwide community of makers, students, hobbyists, artists, programmers and professionals to produce a vast amount of accessible knowledge. The product range includes products for IoT applications, wearable, 3D printing and embedded environments.

The Arduino software
- is easy-to-use for beginners but flexible enough for advanced users
- runs on Mac, Windows and Linux
- is used by teachers and students to build low cost scientific instruments to prove chemistry and physics principles and to get started with programming and robotics
- is used by designers and architects to build interactive prototypes
- is used by musicians and artists to build installations ansd to experiment with new musical instruments
- is used by makers to build projects
- can be used by anyone by following detailed instructions of a kit or sharing ideas online

Arduino offers some pros over other microcontrollers and microcontroller platforms available:
- inexpensive compared to other microcontrolle platforms; the least expensive version of the Arduino module can be assembled by hand, pre-assembled Arduino modules are also affordable
- cross-platform, the Arduino software (IDE) runs on Windows, Macintosh OSX, Linux (most microcontroller systems are limited to Windows)
- simple, clear programming environment
    - easy-to-use for beginners but flexible enough for advanced users
    - because it's based on Processing programming environment, students learning to program in that environment will be familiar with how the Arduino IDE works
- open source and extensible software, published as open source tools
    - the language is based on AVR-C programming and can be expanded through C++ libraries
    - AVR-C code can be added directly into the Arduino programs 
- open source and extensible hardware, with the plans of the Arduino boards published under a Creative Commons licence, so own versions of the module with extensions and improvements can be built by anyone

Code can be developed in the [Arduino Cloud](https://cloud.arduino.cc/) to build smart IoT projects.
- smart devices can be connected within minutes
    - wide range of compatible devices, the Arduino Cloud provides the necessary code
- nice dashbords can be created with mix and match customizable widgets to visualize real time or historical data or to control the device
- projects can be controlled from anywhere in the world from any device, for example Alexa.
- projects and libraries are always synced and up to date
- all projects are cloud based and accessible from any device
- data is always ecrypted and always belongs to the user (you)
- is open and customizable, has flexible APIs to integrate and customize Cloud
- all connected Arduino boards have a built-in crypto chip that makes them incredibly secure
- sketches and project data are stored in AES 256-bit encrypted datastores
- account security is protected with single use authentication codes
- open and transparent data privacy terms and your data always belongs to you
- has a wide range of resources
    - [tutorials](https://docs.arduino.cc/cloud/iot-cloud)
    - [APIs](https://docs.arduino.cc/arduino-cloud/getting-started/api-overview)
    - [documentation](https://docs.arduino.cc/cloud/iot-cloud/tutorials/technical-reference)

Arduino's [history](https://en.wikipedia.org/wiki/Arduino#History) is interesting. The Arduino project was based on the developing platform Wiring created by Hernando Barragán as a Master's thesis project at the Interaction Design Institute Ivrea (IDII) in Ivrea, Italy in 2003.

Hernando has been developing Wiring ever since and now Wiring is an open source electronics prototyping platform composed of programming language, an integrated development environment (IDE) , and a single-board microcontroller. More about Wiring can be found [here](http://wiring.org.co/). 

Wiring offers new boards to customers in their [webshop](https://eu.robotshop.com/), but Wiring supports other boards directly, so Wiring IDE can be used on other boards as well (and more will be added). Thus Arduino board can be used with the Wiring IDE. Wiring can be [downloaded](http://wiring.org.co/download/) for Linux, MacOS X and Windows.


## Mbed

[Mbed](https://en.wikipedia.org/wiki/Mbed) is an open-source platform and operating system for internet-connected devices that are based on 32-bit [ARM Cortex-M microcontrollers](https://www.arm.com/products/silicon-ip-cpu?families=cortex-m&showall=true). These devices are known as IoT devices. Mbed is collaboratively developed by [Arm](https://en.wikipedia.org/wiki/Arm_(company)) and its tech partners.

Mbed is free and open source IoT operating system with connectivity, security, storage, device management and ML. Mbed offers free development tools, thousands of code examples and support for hundreds of microcontrollers development boards, as described [here](https://os.mbed.com/).
- Mbed has its own Mbed OS with 
    - well-defined API to develop C++ applications
    - free tools and thousands of code examples, libraries and drivers for common components
    - built-in security stack
    - core components such as storage and connectivity options
- Mbed Enabled hardware has many options
- Compiler and IDE
    - Keil Studio Cloud
        - modern, zero-installation Mbed development environment in the browser
        - code high-lighting, WebUSB flash and debug and version control
    - Mbed Studio
        - an IDE for application and library development
        - single environment with everything to create, compile and debug Mbed programs
    - Mbed CLI
        - command line interface allows to integrate Mbed functionality into preferred editor or enhance automation setup
- Security
    - Arm Mbed TLS provides comprehensive SSL/TLS solution
    - easy to include cryptographic and SSL/TLS capabilities in the software and embedded products
    - as an SSL library Arm Mbed TLS provides an intuitive API, readable source code and a minimal and highly configurable code footprint
 
## IFTTT

[IFTTT](https://ifttt.com/) is a private company that runs online digital automation platforms and offers them as a service. IFTTT is short for If This Then That. IFTTT integrates apps, devices and services quick and easy. IFTTT makes tech [incompatibility easy to tackle](https://ifttt.com/explore/new_to_ifttt). Automating process is simple, the user chooses
- trigger
- action(s)
- name for the applet and finish

IFTTT has over 700 services ready (more added weekly) to be automated. Price range of the services is from 0€/forever to 5€/month. IFTTT provides a simple way to create for example a smart home:
- make a user account and log in (can be done with Google or Facebook)
- trigger: give Google Assistant a voice command "Hey Google, I need coffee"
- action(s): coffee machine is turned on and when the coffee is ready, the coffee machine turns off
- name the applet: "make coffee" and finish the applet

## Sony MESH

[Sony MESH](https://meshprj.com/en/) is a Sony corporate startup that sells a range of colored blocks with different sensors and wireless connection to the IoT. It's digital DIY platform to connect everyday objects into IoT and [create your own projects](https://www.bundl.com/articles/examples-sony-launch-and-crowdfund-iot-corporate-startup).
- MESH blocks are wireless
- Visual Coding App called Canvas simplifies programming and wiring with drag-and-drop functions
- project can be connected to web services and popular smart gadgets like WeMo and Google Assistant voice activation
- hardware projects can be expanded without expertise
    - IoT block in the project allows additions of smart features such as motion-sensitivity, remote control, orientation monitoring, voice commands, notifications, text messaging and more
- projects can be connected to the internet instantly
    - project can be transformed into an IoT device, such as 
        - Twitter alarm system
        - a voice-activated, data-logging, remote-controlled car
- allows customization of smart gadgets
    - MESH is compatible with over 350 smart gadgets, home automation devices and web services on IFTTT
    - each IoT block has built-in IFTTT integration, so that it's simple to add custom features on a smart gadget
        - MESH Motion and MESH Temperature & Humidity used together allow addition of motion-activated, multi-room temperature monitoring to a smart device like Nest thermostat
- allows to build own smart gadget
    - MESH GPIO is a simple interface for development boards like Arduino and Raspberry Pi or actuators like a DC motor
    - MESH GPIO integrates any smart devices or web services on IFTTT, incl.
        - Amazon Alexa for Echo
        - Google Assistant
        - Google Sheets
        - LIFX
        - Nest
        - Phillips Hue
        - Twitter
        - WeMo
        - over 350 more
- MESH blocks use Bluetooth
- MESH blocks are rechargeable, durable and compact

## Sources:

[On-Device Training of Machine Learning Models on Microcontrollers with Federated Learning](https://www.mdpi.com/2079-9292/11/4/573)

[TinyFedTL: Federated Transfer Learning on Ubiquitous Tiny IoT Devices](https://ieeexplore.ieee.org/abstract/document/9767250)

[Edge Impulse](https://www.edgeimpulse.com/)

[Beginner's Guide to DSP](https://www.analog.com/en/design-center/landing-pages/001/beginners-guide-to-dsp.html)

[Keras APIs](https://keras.io/)

[Arduino](https://www.arduino.cc/)

[Arduino Getting started guide](https://www.arduino.cc/en/Guide)

[Arduino Tutorials on Arduino Project Hub](https://projecthub.arduino.cc/)

[Mbed](https://www.arm.com/products/development-tools/embedded-and-software/mbed-os)

[Mbed (product)](https://os.mbed.com/)

[IFTTT](https://ifttt.com/)

[MESH blocks](https://meshprj.com/en/)

[Wiring](http://wiring.org.co/)

[Wiring webshop](https://eu.robotshop.com/)