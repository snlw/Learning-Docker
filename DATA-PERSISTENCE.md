## Data Persistence 


### Docker Volume
A volume is a directory that can be shared among containers. 

To create one, execute `docker volume create test_volume`

To inspect one, execute `docker volume inspect test-volume`

To show all, execute `docker volume ls`

To use one, execute with a `-v` or `--volume` flag. `docker run -v test_volume:/data_1 image_1`

To share a volume between another container, execute `docker run -v test_volume:/data_2 image_2`

To remove a volume, execute `docker volume rm test-volume`


### Bind Mounts 
Bind mounts allow you to map any directory on the host machine to a directory within the container.

To create one, execute with a `--mount` flag. `docker run --mount type=bind,src=/host/path,dst=/container/path image_name`

### tmpfs Mounts
Docker tmpfs mounts allow you to create a temporary file storage directly in the container’s memory. Data stored in tmpfs mounts is fast and secure but will be lost once the container is terminated.

To create one, execute with a `--tmpfs` flag. `docker run --tmpfs {container_path} image_name
