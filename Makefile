LOCAL_WEB_CONTAINER=master-ocr

requirements:
	docker exec -it $(LOCAL_WEB_CONTAINER) bash -c "cd .. && pip install --exists-action w -r requirements.txt"

build:
	docker-compose up -d --build --remove-orphans

rebuild:
	docker-compose up --build --force-recreate --no-deps

up:
	docker-compose up -d

stop:
	docker-compose stop

ssh:
	docker exec -it $(LOCAL_WEB_CONTAINER) /bin/bash

flake8:
	docker exec -it $(LOCAL_WEB_CONTAINER) flake8 --ignore=E999
