# Link
https://roadmap.sh/docker

## Docker Networks
Docker networks provide an essential way of managing container communication. It allows containers to talk to each other and to the host machine using various network drivers. By understanding and utilizing different types of network drivers, you can design container networks to accommodate specific scenarios or application requirements.

### Network Drivers
There are several network drivers available in Docker. Here, we will cover four of the most common ones:

1. bridge: The default network driver for containers. It creates a private network where containers can communicate with each other and the host machine. Containers on this network can access external resources via the host’s network.
2. host: This driver removes network isolation and allows containers to share the host’s network. It is useful for cases where network performance is crucial, as it minimizes the overhead of container networking.
3. none: This network driver disables container networking. Containers using this driver run in an isolated environment without any network access.
4. overlay: This network driver enables containers deployed on different hosts to communicate with each other. It is designed to work with Docker Swarm and is perfect for multi-host or cluster-based container deployments.

### Managing Docker Networks

- `docker network ls`
    - List all networks
- `docker network inspect {network_name}`
    - Inspect a network
- `docker network create --driver {driver_type} {network_name}`
    - Create a network
- `docker network connect {network_name} {container_name}`
    - Connect containers to a network
- `docker network rm {network_name}`
    - Remove a network


Disconnect containers from a network: docker network disconnect <network_name> <container_name>
Remove a network: docker network rm <network_name>
