### Docker Tutorial

This is a tutorial for setting up docker for bioinformatics use.

This repository uses vscode with docker-related extension installed.

##### Set Up 

- conda > environment.yaml (See conda setup in repository tutorial-snakemake)
- docker > Dockerfile, .dockerignore 
- bash commands > Makefile

<br>

##### Docker Commands 

Build image: `$ docker build -t tutorial:v1.0 .`

List all images in your local docker: `$ docker images`

Create container with project mounted: `docker run -it -v $(pwd):/data tutorial:v1.0 bash`

- `-it`: interactive terminal
- `-v $(pwd):/data`: mount project into container
- `bash`: opens bash shell inside container
- `pwd` is a bash command that print current working directory

Reuse the container: 
- `docker start tutorial_container`
- `docker exec -it tutorial_container bash`

Exit docker:
- `exit`
<br>

##### Make Commands

Self defined commands to encapsulate other bash commands.

To run make commands defined in the Makefile in this repo:
- `make build`
- `make run`
- `make start`
- `make clean`

<br>
<br>
<br>

#### Key concepts 

| Term       | Meaning                                                                             |
| ---------- | ----------------------------------------------------------------------------------- |
| Image      | static data (like a recipe), defines everything needed but does nothing by itself   |
| Container  | running instance (like cooking), actually runs and does the work                    |
| Mount      | bridge to local files                                                               |


