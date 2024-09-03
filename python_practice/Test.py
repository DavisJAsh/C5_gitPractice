server_config = {
    "hostname": "Kura-server",         
    "ip_address": ["192.168.1.10"],         
    "port": 8080,   
    "uptime": 99.98,              
    "ssh_enabled": True,                  
    "supported_protocols": ["HTTP", "HTTPS"]
}

# print(server_config["ip_address"])
# print(type)server_config["ip_address"]))

server_config["ip_address"].append("123.000.0.01")
print(server_config["ip_address"])

# server_config["ip_address"].remove("0")
# print(server_config["ip_address"])

#print(server_config.keys())
print(server_config.values())