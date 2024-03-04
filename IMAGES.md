## Container Images

### Building using a Dockerfile

See full list of instructions at `https://docs.docker.com/reference/dockerfile/`

To build in the current directory, execute `docker build -t image1 .`

To show all, execute `docker image ls`

To remove one, execute `docker image rm image1`

To inspect one, execute `docker inspect image1`

To tag an image, execute `docker tag <image-id> <username>/<repository>:<tag>`

To push from a registry, execute `docker push <username>/<repository>:<tag>`

### Tips for Efficiency
1. Minimize changes in the Dockerfile

2. Build context optimization using a `.dockerignore` file

3. Use smaller base images
    - Choose a lightweight base image that includes only the necessary components

4. Combine instructions to reduce layers 
    - Use `&&` to combine commands
    - Remove temporary/unused files in the same layer

5. Use multi-stage builds 
    ``` 
    FROM node:14-alpine AS build
    WORKDIR /app
    COPY package*.json ./
    RUN npm install
    COPY . .
    RUN npm run build

    FROM node:14-alpine
    WORKDIR /app
    COPY --from=build /app/dist ./dist
    COPY package*.json ./
    RUN npm install --production
    CMD ["npm", "start"]
    ```
### Tips for Safety
1. Keep base images up-to-date

2. Avoid running containers as root

3. Limit the scope of `COPY` and `ADD`

4. Scan images for vulnerabilities

