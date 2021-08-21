Summary
-

How to build a docker image:

`docker build -t master-ocr .`

- -t is used to TAG the Docker Image with a specific name.

Makefile commands
-
- `make build` - build the docker containers from docker-compose.yml
- `make rebuild` - rebuild the docker containers from docker-compose.yml
- `make up` - start the docker containers from docker-compose.yml
- `make stop` - stop the docker containers from docker-compose.yml
- `make build` - build the docker containers from docker-compose.yml
- `make ssh` - open the shell within the docker container in order to execute regular python commands
- `make flake8` - code linting
- `make requirements` - install the required packages