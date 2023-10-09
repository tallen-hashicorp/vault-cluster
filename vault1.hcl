storage "raft" {
  path    = "data/node1"
  node_id = "node1"
  retry_join {
    leader_api_addr = "http://172.31.44.133:8200"
  }
  retry_join {
    leader_api_addr = "http://172.31.38.98:8200"
  }
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = "true"
}

api_addr = "http://172.31.46.138:8200"
cluster_addr = "http://172.31.46.138:8201"
ui = true
disable_mlock = "true"