IMAGE = tutorial:v1.0
CONTAINER = tutorial_container

build:
	docker build -t $(IMAGE) .

run:
	docker run -it --name $(CONTAINER) -v $(shell pwd):/data $(IMAGE) bash

start:
	docker start $(CONTAINER)
	docker exec -it $(CONTAINER) bash

clean:
	docker rm $(CONTAINER)