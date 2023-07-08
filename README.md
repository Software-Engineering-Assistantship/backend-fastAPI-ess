# ESS Back-end FastAPI ⚡️

This is the Back-end base project in Python with FastAPI for the Software and Systems Engineering discipline, offered by the Informatics Center (CIn) of the Federal University of Pernambuco (UFPE). This backend uses MongoDB for database manipulation.

## Table of Contents

1. [Getting Started](##getting-started)
2. [Scripts](#scripts)
3. [Dependencies](#dependencies)
4. [Architecture](#architecture)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

To run this project, you'll need to have the following software installed on your system:

- Python 3.10

### Installing

Clone the repository and install the dependencies by running the following command in the project directory:

```sh
pip install -r requirements.txt
```

# Running MongoDB with Docker 🐳

## First time running?


Run the follow scripts to build the images

```sh
docker-compose up --build
```

## Running Database

Run docker compose

```sh
docker-compose up
```

If you want to run the docker container without watch the logs, you can run 

```sh
docker-compose up -d
```

To stop the docker container, just run:

```sh
docker-compose down
```

### Environment

This project uses `.env` files to manage database environment variables (you can create it from .`env.example`).

# Running the FastAPI server 🦄

To start the server, run the following command:

```sh
uvicorn src.main:app --reload
```

This command will run the Uvicorn compiler in watch mode, so every time a modification occurs the server restarts.

## Dependencies

The following dependencies are used in the project:

- [python-dotenv](https://pypi.org/project/python-dotenv/): A simple way to manage your environment variables in python scripts.
- [FastAPI](https://fastapi.tiangolo.com/): A modern, fast (high-performance), web framework for building APIs with Python.
- [Uvicorn](https://www.uvicorn.org/): An ASGI web server implementation for Python.
- [Pydantic](https://docs.pydantic.dev/latest/): The most widely used data validation library for Python.
- [Pymongo](https://pymongo.readthedocs.io/en/stable/tutorial.html): A Python distribution containing tools for working with MongoDB, and is the recommended way to work with MongoDB from Python.
- [Pytest](https://docs.pytest.org/en/7.4.x/): Framework that makes it easy to write small, readable tests, and can scale to support complex functional testing for applications and libraries.
- [Pytest-BDD](https://pypi.org/project/pytest-bdd/): Library for Pytest that implements a subset of the Gherkin language to enable automating project requirements testing and to facilitate behavioral driven development.
## Architecture

To understand and learn more details about the structure of the project, click [here](./docs/architecture-pattern.md) to be redirected to the README that contains this information.


