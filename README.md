# 📦 Super container - X-Ray Explorer VR

<p align="right">
  Developed by: <a href="https://github.com/AlexAzumi">Alejandro Suárez 🪐</a>
</p>

Super container is a Docker Compose file that includes all the required services in order to run all the X-Ray Explorer VR project (except the VR application).

## How to use

### Requirements

- Docker Engine (with Docker Compose)

### Running all containers

1. Clone the project and change directory

    ```console
    git clone https://github.com/X-Ray-Explorer-VR/super-container.git

    cd super-container
    ```

2. Run the Docker Compose file

    ```console
    docker compose up -d
    ```

3. Import the `skeleton-database.sql` file and run it inside the MariaDB docker instance. It can be accesed using `localhost:3306`

4. Start using it with the VR application: [X-Ray-Explorer-VR/X-Ray-Explorer-VR](https://github.com/X-Ray-Explorer-VR/x-ray-explorer-vr)
