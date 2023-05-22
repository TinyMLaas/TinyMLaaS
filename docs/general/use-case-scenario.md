# Use case scenario to demonstrate TinyML as-a-Service

As a security-conscious homeowner, I want to use TinyML(*) for human-detection to monitor my home and receive alerts when unexpected activity is detected, so that I can take action to ensure my home is safe.

1. Data Collection: User collects video footage from their smart camera, which will be used to train the TinyML model for human-detection.
2. Model Training: User trains a TinyML human-detection model using the collected video footage and publicly available datasets.
3. Model Squeezing: User optimizes the model size to ensure it can be deployed on TinyML-enabled devices.
4. Model Deployment: User deploys the optimized TinyML model on their smart camera.
5. Inference: The smart camera uses the deployed TinyML model to perform real-time human-detection, identifying humans and activities within its field of view.
6. Alerts: If the camera detects unusual activity, such as a person entering the home when no one is expected to be there, it sends alerts to the user's smartphone.
7. Model Update: User periodically updates the TinyML model with new data to ensure its accuracy and improve its performance over time.
8. User Access: User can access real-time video footage and receive notifications to confirm the alert and take appropriate action, such as contacting the police or checking in on the home from a remote location.

(*) The alternative to TinyML would be running human detection in the cloud, with all the possible network latency issue we may face. TinyML-based human-detection can trigger an alarm installed "in place" where the camera is. By relying on cloud, we would need to transfer the video footage to the cloud and then running inference at there.