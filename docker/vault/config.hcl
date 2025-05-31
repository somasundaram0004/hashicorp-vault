storage "postgresql" {
  connection_url = "postgresql://vault:vaultpassword@192.168.1.9:5432/vault?sslmode=disable"
  table          = "vault_kv_store"
  max_parallel   = 128
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

api_addr      = "http://localhost:8200"
cluster_addr  = "http://localhost:8201"
disable_mlock = true
ui = true

# Additional custom settings can be added here as needed.

telemetry {
  disable_hostname = true
  prometheus_retention_time = "12h"
}