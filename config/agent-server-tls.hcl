## TLS Encryption (requires cert files to be present on the server nodes)
# tls {
#   defaults {
#     ca_file   = "/etc/consul/config/consul-agent-ca.pem"
#     cert_file = "/etc/consul/config/dc1-server-consul-0.pem"
#     key_file  = "/etc/consul/config/dc1-server-consul-0-key.pem"

#     verify_outgoing        = true
#     verify_incoming        = true
#   }
#   https {
#     verify_incoming        = false
#   }
#   internal_rpc {
#     verify_server_hostname = true
#   }
# }

## TLS Encryption (requires cert files to be present on the server nodes)
ca_file   = "/etc/consul/config/consul-agent-ca.pem"
cert_file = "/etc/consul/config/dc1-server-consul-0.pem"
key_file  = "/etc/consul/config/dc1-server-consul-0-key.pem"
verify_incoming        = false
verify_incoming_rpc    = true
verify_outgoing        = true
verify_server_hostname = true

auto_encrypt {
  allow_tls = true
}
