IMAGE = tutorial:v1.0

build:
	docker build -t $(IMAGE) .

run:
	docker run -it --name tutorial_container -v $(shell pwd):/data $(IMAGE) bash

start:
	docker start tutorial_container
	docker exec -it tutorial_container bash

clean:
	docker rm tutorial_container