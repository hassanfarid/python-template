# Python-Template Project

Different studies suggest that code (a piece of functionality) is read many more times than written or updated. Which highlights the importance of writing good quality code by following consistent code style and documentation style guides. Writing tests for the code piece improves readability of the code, and as well as improves stability of code base.

The knowledge about importance of writing quality code is common knowledge and agreed upon by everyone.

This project attempts to provide a template project, which can be used to get on-board with all known good practices using industry standard toolset for new and existing projects.

## How to structure your code base
This maybe a subjective matter, and there' no single bullet for this. Here are my recommendations for hot to structure your source code,

```
| component-code-repository (example: fantastic-app-backend)
    | ci/ # all scripts helpful for CI process
    | scripts/ # all short hand scripts for testing and running application in local env
    | src/ # may contain all the source code specific to this repository
    | tests/ # contains test suite for your code base
    | CODEOWNERS
    | CONTRIBUTION.md
    | Dockerfile
    | docker-compose.yml
    | README.md
```

## How to Build your project?
The project can be built for multiple targets using single Dockerfile. The purpose of single Dockerfile is to make maintenance of deployment code easier.

This project can be built as docker image with all the targets supported by Dockerfile,
- ci - for using target image in continuous integration process
- prod - for publishing target image in production

```bash
# You can set the target to either `ci` or `prod` based intention
TARGET='ci'

# Build image for $TARGET environment
docker build --build-arg TARGET=$TARGET -t python-template:$TARGET -f Dockerfile .

# The output image will be labelled `python-template:ci` or `python-template:prod`

```

## Features for Continuous Integration
The project has provided templates for ensuring best practices and maintaining stability of code base. The following features are supported,

### Coding Guidelines
Specific instructions about [coding guidelines](CONTRIBUTING.md) are documented separately.

The integrated tools help python projects maintain coding standards including,

#### Coding Style Guide
```bash
# This test will use pycodestyle to validate against PEP-8 standards
docker run --rm python-template:ci bash ../ci/pycodestyle/script.sh

# This test will use pydocstyle to validate against PEP-257 standards
docker run --rm python-template:ci bash ../ci/pydocstyle/script.sh

# This test will use mypy to validate against PEP-484 standards
docker run --rm python-template:ci bash ../ci/mypy/script.sh

# as an alternate pylint may also be used code advanced coding guidelines specific to your project
# Note: to make it work as expected, you need to configure pylint configurations as desired
# This test will use pylint to validate PEP-8, PEP-257, and others
docker run --rm python-template:ci bash ../ci/pylint/script.sh
```

#### Code Stability Test
```bash
# This test will use pytest to run all test suits defined in project
# additionaly: this also geenrates test coverage report on console
docker run --rm python-template:ci bash ../ci/pytest/script.sh

# This will use coverage tool to generate test coverage, and run test if coverage is not generated yet
# the coverage html report is generated at ./cov_html as configured in ../ci/coverage/.coveragerc.ini
docker run --rm python-template:ci bash ../ci/coverage/script.sh
```

#### Code Documentation
```bash
# This script will generate code documentation using code comments
# the output html is generated in ../docs/_build/html
docker run --rm python-template:ci bash ../ci/generate_code_documentation.sh
```

