# Sprint 3 Planning

## State of backlog items

### #56 WebApp shows camera image & prediction
- Can't progress until #55 is done

### #10 Integrate Python {unit, acceptance} tests in CI (Github workflow) 
- Basically done
- The current situation with the project having multiple requirements.txt files is confusing

### #53 WebApp chooses image dataset from list enhancement
- Ready but needs to be approved
- CSV file should contain names of datasets and links to model binaries, not images

### #16 Test Driven Development coverage
- Not worked on until it's decided what to do
- Related to the integration of pytest task

### #14 Research on relevant UI / Services (Edge Impulse, Arduino, mbed, IFTTT and Sony MESH etc.)
- Waiting for Michihito's approval

### #54 WebApp Compiles Model to TinyML
- Completed and ready for merge

### #52 Webapp chooses model from list
- Borna and Matias will work on this
- Arttu's model should be found from the CSV file 

### #50 WebApp stores image data
- Nella is working on this but hasn't really made progress yet

### #87 Design more polished UI
- Nella added notes from last sprint review
- "Map element" was added to the notes. The map could update if the device's location changes.

### #51 WebApp labels image data
- No questions yet

### #55 WebApp builds docker image to run TinyML (Compiling)
- Not started yet
- Hiroshi has answered Leevi's question

### #92 Demo video
- Can be AI generated, shouldn't be difficult
- Probably doable in a day


## Backend

The OpenAPI server adds too much complexity and should be removed. Instead everything should be done in Streamlit. Eventually WebRTC should be used.

See [Issue #93](https://github.com/Origami-TinyML/tflm_hello_world/issues/93).


## Meeting at luola

Borna will make a poll about scheduling in discord.

