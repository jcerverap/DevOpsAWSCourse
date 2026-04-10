aws_region = "eu-central-1"
environment_name = "prod"
cluster_name = "eksdemo1"
cluster_service_ipv4_cidr = "172.22.0.0/16"
cluster_version = "1.33"

cluster_endpoint_private_access = true
cluster_endpoint_public_access = false
cluster_endpoint_public_access_cidrs = ["10.0.0.0/8"]

node_instance_types = ["t3.small"] # Replace with desired types
node_capacity_type  = "ON_DEMAND"
node_disk_size      = 30

business_division = "retail"
