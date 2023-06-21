# Client meeting 21.6.2023

## Overview
- Presented the program and its current properties in detail for the client.
- Discussion and explanation of related choices in regard of the current program and its design.
- Discussion and notes on client's wishes, concerns, and questions regarding the current program and its design.
- Discussion of the detail and scope of the required documentation of the program.

## Demo
- Application running on Tuomas's home server due to the university staging server's limited size.
- Running Arduino devices locally.
- Demonstrated the whole workflow for the program, including a real world use case and an improved ML model with valid real world observations implemented on an Arduino.
- Demonstrated CLI
	- Operation
	- Workflow runs at the moment until compiling.
	- Generation from API specification.
	- Presented the code for the CLI.
	- Currently fully autogenerable given that the endpoints remain unchanged.

## Client's wishes and concerns:
- Database
  - Adding a compiler table in database.
  - Connection between device and combine models tables in database.
  - The relationships of entities should in principle be described in the database itself, not in REST.
- Docker:
  - Docker in Docker, Kubernetes, and related security issues.
  - Bridging part of the main docker compose.
- CLI:
  - Fully automated CLI.
  - Observing from CLI.

- Documentation:
  - Refinement of the information on the API documentation.
  - Updating the existing documentation.
  - Diagrams: Architecture, Block, Dependencies.
  - Detailed explanation of the software tools and frameworks, design and implementation choices.
  - Instructions for testing.
  - Instructions on the execution of the program.

## Todo for next sprint:
- Duration: 1 week sprint.
- Fulfilling the client's wishes.
- Completion of the existing final tasks.
- Polishing details and documentation.
- Docker: tensorflow running in a separate container.
- CLI improvements.
- Preparations for the final demo.

## Next client meeting:
- Client will join the course final demo on Friday June 30th 10am. 
