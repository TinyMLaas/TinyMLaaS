# Sprint review 17.03.2023

- Leevi made a demo of the current status
- Hiroshi suggested submit tflm_hello_world_staging branch in private
- Tasks in review are now done
- Broken coverage is done
- Coverage is overall 39,7%
- Tasks in progress have some problems
- UI design - is UI design guide up to date?
- Unit tests: UI RF tests in progress
- RF tests for model have not yet been done
- Installable image has been done, but there's problem with the usb
- The documentation is quite up to date

# Sprint 5 planning

- Hiroshi: The app should eventually run in the cloud, now we need bridging device because Arduino not have ip address, test on two different devices & two different models, team split on smaller tasks
- Raspberry Nano for second device, make another model and another image recognition data set
- #117: RPI pico support
    - everything should be done on command line, which is currently in use
    - thus can be dockerized, dockerize installer
    - need OS image of the device
    - maybe use same dataset in grayscale
    - need the prediction
    - image not coming back, but prediction coming back?
    - identify which device is used on the device page
    - code that runs on the device
    - Document: How to add new device and a user manual
- #118: Another vision model
    - need another dataset for different use case
    - what kind of use case -> what kind of dataset
    - TinyML visual model - if find something interesting then use it
    - Training code needs to be modified to support multiple datasets
    - Connect model, training and data pages
    - RF tests
    - Document: How to add new model and a user manual
- #119: Bluetooth connection Arduino & Nano, usb for Pico (this version does not support bt)
    - install via bt if possible, if not, then send only pred (4) via bt
    - send image over bt (for training, not inference) (data collection firmware)
- CI/CD in sprint 6 
- Plan how to explain what team has done to the customer in the next review
- Make a sprint 5 goal on Monday

# Retro

- Scrum master: Leevi
- Secretary: Borna
- What  went well:
    - Staging repo
    - Working was faster and more was accomplished
    - Good, peaceful working 
    - Luola-day once a week is good
    - Review went according to schedule
- What didn't go well:
    - Exam week was not taken into account in Sprint planning
    - Estimates were inaccurate 
- What is to be imporoved:
    - PR from now on squash and merge, everything as one clean commit
    - Everyone makes their own RF tests at the beginning of the tasks (TDD)
    - Scrum master will ask status of the tasks in the comment section of PR 
    - Review was not planned well enough
    - Before review (e.g. Wednesday) Luola-day, Thursday in Discord plan review, aka Client meeting planning
    - If some task turns out to be too much the team will take care of it together

- Next demo with a device
- Scrum master takes care of the new devices and distributes them as needed for tasks