# testDocker

Testing Docker

* **Build:** `DOCKER_BUILDKIT=1 docker build -t testdocker .`
* **Run (interactive session):** `docker run -it testdocker`
* **List of consoles:** `docker ps`
* **Copy file from the container:** `docker cp CONT_ID:/path/to/file.txt file.txt`
* **Prepare for release** `docker tag testdocker jorgealda/testdocker:v0.1`
