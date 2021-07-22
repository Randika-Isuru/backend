build:
	docker build -t test-api-server .

create-tag-for-docker-hub:
	docker tag test-api-server randikaisuru89/test-api-server:1.1.1

login-to-docker-hub:
	docker login -u randikaisuru89

push-image-to-docker-hub:
	docker push randikaisuru89/test-api-server

pull-image-to-docker-hub:
	docker pull randikaisuru89/test-api-server

run-image:
	docker run -p 5000:5000 --name test-api-server -d randikaisuru89/test-api-server
