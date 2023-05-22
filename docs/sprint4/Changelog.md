# Changelog for sprint 4

## CI/CD
- Github actions has been fixed.
- RF tests are now being run in CI/CD workflow.
- Codecov fixed.



## UI related changes

- Training page refactored to match the UI-Design guide.
- Compilation specific code moved from Training into Compilation page.
- Data page (Tuula describe changes to Data page here)
- WebApp labels image data


## Application changes and tests

- S3 has been made optional with the possibility to use LocalStack.
- Dockerfile and inference code made for "X86_simulation" possibility for e.g., CI/CD purposes.
- RF test has been fixed.
- Rf tests implemented.

## Device
- WebApp builds installable image for the device, Arduino Nano 33 BLE Sense, to run human detection using our own model.



## How to Run
- ```make app``` runs the application and builds all the necessary components.

