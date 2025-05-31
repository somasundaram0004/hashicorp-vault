FROM hashicorp/vault:latest

ENV VAULT_ADDR=http://localhost:8200
ENV VAULT_DEV_ROOT_TOKEN_ID=root

COPY docker/vault/config.hcl /vault/config.hcl

CMD ["server", "-config=/vault/config.hcl"]