## Sprint Planning 6.3.2023

- Task requirements are not changed after Sprint planning.
- DoD: “Done means coded to standards, reviewed, implemented with acceptance test driven development (with robot test framework), tested with 70 percent test automation, integrated and documented.”

### Issues in review
- Webapp chooses image dataset from list #53. Modifications to remove s3 needed.

### Planned in a sprint
- Issue #50 and #51 modified to remove s3
- DoD added to README.md
- Drafts:
    - Fix broken coverage report workflow
    - Fix broken RF for ATDD, code coverage > 70%
    - Unit tests: code coverage ratio > 70%
    - Add API document for each package, aiming at API doc coverage > 70%
    - Fix UI for the updated UI design guide
    - Make s3 optional

### Estimation with planning poker
- CI/CD deploys TinyML on device 2 days
- WebApp builds installable image for device to run TinyML 4 days
- Device sends pred to WebApp
- WebApp inspects images manually to drop or fix label ?
- WebApp shows pred 1 day
- Train a TinyML suitable model 3 days

### Staging server for the team
- Discussion about the advantages of a staging server
- Made a new staging server for the team. All team members clone the new repo and make a new branch for each feature (task), then make a PR for this branch.

### Devices
- The team is now using Arduino Tiny Machine Learning kits

### Meeting at Luola
- Arttu will make a poll in Doodle about the scheduling

### Meeting for code review
- Arttu will make a poll in Doodle about the scheduling