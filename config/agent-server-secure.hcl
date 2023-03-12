# agent-server-secure.hcl

# Data Persistence
data_dir = "/etc/consul/data"

# Logging
log_level = "DEBUG"

# Enable service mesh
connect {
  enabled = true
}

# Addresses and ports
addresses {
  grpc = "127.0.0.1"
  https = "0.0.0.0"
  dns = "0.0.0.0"
}

ports {
  //grpc  = 8502
  grpc_tls  = 8502
  http  = 8500
  https = 8443
  dns   = 8600
}

# DNS recursors
recursors = ["1.1.1.1"]

# Disable script checks
enable_script_checks = false

# Enable local script checks
enable_local_script_checks = true
