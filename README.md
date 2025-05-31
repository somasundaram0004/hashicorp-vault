# HashiCorp Vault Docker Project

This project sets up HashiCorp Vault using Docker and Docker Compose with custom configuration settings.

## Project Structure

```
vault-docker-project
├── docker
│   └── vault
│       └── config.hcl
├── Dockerfile
├── docker-compose.yml
└── README.md
```

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. **Clone the repository** (if applicable):
   ```sh
   git clone <repository-url>
   cd vault-docker-project
   ```

2. **Build the Docker image**:
   ```sh
   docker build -t vault-image .
   ```

3. **Start the Vault service**:
   ```sh
   docker-compose up
   ```

4. **Initialize and Unseal Vault**:
   In a new terminal, run:
   ```sh
   docker exec -it vault-docker-project-vault-1 vault operator init
   ```
   Unseal Vault with the generated keys (repeat three times with different keys):
   ```sh
   docker exec -it vault-docker-project-vault-1 vault operator unseal <unseal_key>
   ```
   Log in with the root token:
   ```sh
   docker exec -it vault-docker-project-vault-1 vault login <root_token>
   ```

5. **Access Vault UI**:
   Once the service is running and unsealed, access the Vault UI at [http://localhost:8200](http://localhost:8200).

## Configuration

The Vault configuration is in [`docker/vault/config.hcl`](docker/vault/config.hcl). You can modify this file to change the storage backend, listener settings, and other configurations as needed.

## Stopping the Service

To stop the Vault service, run:
```sh
docker-compose down
```

## Additional Information

For more information on how to use HashiCorp Vault, refer to the official [Vault documentation](https://www.vaultproject.io/docs).