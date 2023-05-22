# Sprint review 3.3.2023

- It was suggested that we could use a real device in the final demo.
- We might do an ideation workshop at some point to come up with product use cases and features.

## Task status
- #55: The acceptance criteria were not clear. It's OK according to Hiroshi.
- #50: Nella has done this. Access to AWS is needed. Hiroshi will look into it.
- #51: Nella's work is also related to this task.
- #53: Has been done 4 times. Still needs a test dataset with correct structure.
- UI Polishing was done.
- Demo video was done.

## Other
- Robot Framework tests still need to be implemented. A new task was created for this.
- Python coverage test results don't show up. A new task was created.

- We have completed 17 days of work out of the expected 24. Tasks need to be estimated better (with added overhead).
- Matias suggested using story point based estimates instead of hour based ones.


## Demo
- Borna demonstrated the new UI

- st.write could possibly be used for displaying the model.
- Model should not be selected in the device tab, it should instead be in compiling or installing.
- Observation tab should show data for only a single device. We need a way to select a device. This should be done in an earlier tab with session state.
- At some point we might want to have a wizard that guides the user through deployment.

## Planning
- Goal of next sprint is human detection on a TinyML device.
- The webapp will only have to work locally on the user's machine, so networking is not an issue. Communication with device can be done over USB.
- The webapp should display the connected device. You should be able to compile a model for it, install it, and observe results => complete pipeline should be functional.
- Fixing issues with tests is top priority.
- Backend is not used for anything. It could be deleted.
- Roberto will provide us devices. It's not yet known what kind or how many devices we will get.
- Some devices support model update via bluetooth, we might want to implement it at some point.

- Michihito suggested that we could present the MVP to our friends as an easy way to get feedback on the UI.
- Matias suggested that asking for feedback could be a task and that the feedback could be documented.


# Retrospective 3.3.2023

## Things that went well
- The demo went well (the viewers were successfully deceived)
- A lot of features were implemented
- We had good teamwork
- We had good adaptation and stress management

## Things that need improvement
- The demo video should've been planned more in advance, and it should've been split between students better.
- Task acceptance criteria is not clear and Hiroshi keeps constantly changing the requirements in the middle of the sprint, resulting in a lot of wasted time.
-Due to changing requirements the tasks often get split into multiple subtasks which are not defined anywhere. We should define them by adding them to the sprint backlog.
- The whole project structure is different from what it should be for this course, since the client should only be involved during meetings and not during sprints.
- We are lacking tests and documentation (work hours should be in the README!)
- We need a proper (documented) definition of done.
- We should review code written by others and share information about implementation details. We should do it during sprints because we won't have time to do it during retrospectives.

Two suggestions were made for improving our workflow:
1. We create a separate staging repo that's completely controlled by students. We merge all of our work to it by ourselves. The changes made to the staging repo are then reviewed and merged to the main repo only at the end of the sprint. 
2. We keep sprint planning face-to-face to improve efficiency. We should precisely document the requirements for each task, and develop them with the requirements that were set at the start of the sprint.

If we implement the first option, we could have different students accepting each other's merge requests and doing code review on them.

- Arttu is now the Scrum Master and Tuula is the secretary.
