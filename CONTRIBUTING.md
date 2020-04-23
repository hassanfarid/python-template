# Contribution Guidelines

## Coding Style Guide
Python community has widely adapted PEP-8, PEP-257 proposals that highlight style guide for writing python code and documentation.

> "A Foolish Consistency is the Hobgoblin of Little Minds" ~ pep8.org

"One of Guido’s key insights is that code is read much more often than it is written. The guidelines provided here are intended to improve the readability of code and make it consistent across the wide spectrum of Python code." ~ pep8.org

Some helpful resources to understand coding styles,
- https://pep8.org
- https://www.python.org/dev/peps/pep-0008/
- https://www.python.org/dev/peps/pep-0484/

## Tools to ensure guidelines
There are multiple tools to maintain the quality of code including,
- For code and documentation guideline
  - pylint
  - pycodestyle
  - pydocstyle
  - black
  - sphinx

## Tools for ensuring code testing
There are tools available to maintain that code remains stable, and any change will not break any other piece of functionality. This can be ensured by writing complete tests on functionality and running those tests before submitting a commit.

Following tools will be used in the project,
- pytest
- coverage