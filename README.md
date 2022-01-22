# testDocker

Testing Docker

* **Build:** `DOCKER_BUILDKIT=1 docker build -t testdocker .`
* **Run (interactive session):** `docker run -it testdocker`
    * Can attach to VSCode to work (edit, debug, etc) _inside_ the container
* **List of containers:** `docker ps`
* **Copy file from the container:** `docker cp CONT_ID:/path/to/file.txt file.txt`
* **Prepare for release** `docker tag testdocker jorgealda/testdocker:v0.1`
* **Persistence of created data** can be achieved with volumes `docker run --mount source=dev_testdocker,destination=/home -it testdocker` Everything inside the `/home`directory is stored inside the volume, and future containers that mount that volume will see it.
