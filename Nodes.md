# ALL
```
{
     //General
     "offset_port_user": "", //The port issued in the front end/subscription
     "offset_port_node": "", //The port issued by the node server
     "server_user": "", //The server address issued in the front end/subscription
     "host": "", //SNI
     //SS
     "plugin": "", //SS plugin
     "plugin_option": "", //SS plugin parameters
     //SSR single-port multi-user
     "mu_port": "443", //Only one can be filled. If not filled, the value will be taken in the order of the port delivered by the node server -> the port delivered in the front end/subscription
     "mu_password": "xxxxxx",//single port password
     "mu_encryption": "none",
     "mu_protocol": "auth_aes128_md5",
     "mu_obfs": "plain",
     "mu_suffix": "cloudfront.net",
     //V2Ray
     "v2_port": "",
     "tls": "0",
     "enable_vless": "0",
     "alter_id": "",
     "network": "",
     "security": "",
     "encryption": "",
     "path": "",
     "verify_cert": "true",
     "obfs": "",
     "header": {
         "type": "http",
         "request": {},
         "response": {}
     },
     //Trojan
     "trojan_port": "",
     "allow_insecure": "0",
     "grpc": "0",
     "servicename": "",
     "enable_xtls": "",
     "flow": "",
     //Trojan-Go
     "mux": "0",
     "transport": "none",
     "transport_plugin": "",
     "transport_method": "",
     //Clash related, does not affect node configuration delivery
     //Reference documentation https://github.com/Dreamacro/clash/wiki/configuration
     "plugin-opts": {
         // Corresponds to the plugin-opts configuration in the Clash yaml file
     },
     "ws-opts": {
         // Corresponds to the configuration of ws-opts in the Clash yaml file
     },
     "h2-opts": {
         // Corresponds to the configuration of h2-opts in the Clash yaml file
     },
     "http-opts": {
         // Corresponds to the configuration of http-opts in the Clash yaml file
     },
     "grpc-opts": {
         // Corresponds to the configuration of grpc-opts in the Clash yaml file
     }
}
```
# Global
```
    "offset_port_user": "", //The port issued in the front end/subscription
    "offset_port_node": "", //The port issued by the node server
    "server_user": "", //The server address issued in the front end/subscription
    "host": "", //SNI
```

# V2RAY
```
    "v2_port": "",
    "tls": "0",
    "enable_vless": "0",
    "alter_id": "",
    "network": "",
    "security": "",
    "encryption":"",
    "path": "",
    "verify_cert": "true",
    "obfs":"",
    "header": {
        "type": "http",
        "request": {},
        "response": {}
    },
```
# VLESS

## @vless-ws - 3005
```
{
    "offset_port_node": "443",
    "offset_port_node": "3005",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com",
    "network": "ws",
    "security": "none",
    "path": "/vlessws",
    "enable_vless": "1"
}
```
## @vless-tcp - 3010
```
{
    "offset_port_node": "443",
    "offset_port_node": "3010",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com"
    "network": "tcp",
    "security": "none",
    "enable_vless": "1"
    "header": {
        "type": "http",
        "request": {
            "path": ["/vltc"]
            }
        }
    }
}

```

## @vless-grpc - 3002
```
{
    "offset_port_node": "443",
    "offset_port_node": "3002",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com",
    "network": "grpc",
    "security": "none",
    "servicename": "vlgrpc"
    "enable_vless": "1"
}

```

# VMESS

## @vmess-ws - 3006
```
{
    "offset_port_node": "443",
    "offset_port_node": "3006",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com",
    "network": "ws",
    "security": "none",
    "path": "/vmessws"
}
```

## @vmess-tcp - 3011
```
{
    "offset_port_node": "443",
    "offset_port_node": "3011",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com"
    "network": "tcp",
    "security": "none",
    "header": {
        "type": "http",
        "request": {
            "path": ["/vmtc"],
              "headers": {
                "Host": ["www.varzesh3.com"]
            }
        }
    }
}
```


## @vmess-grpc - 3003
```
{
    "offset_port_node": "443",
    "offset_port_node": "3003",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com",
    "network": "grpc",
    "security": "none",
    "servicename": "vmgrpc"
}

```

# TROJAN
```
//Trojan
    "trojan_port": "",
    "allow_insecure": "0",
    "grpc": "0",
    "servicename": "",
    "enable_xtls": "",
    "flow": "",
//Trojan-Go
    "mux": "0",
    "transport": "none",
    "transport_plugin": "",
    "transport_method": "",
```
## Default SSL
```
{
    "offset_port_node": "400",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com",
    "network": "tcp",
    "enable_xtls": "1",
    "flow": "xtls-rprx-direct",
    "allow_insecure": "0"
}
```
## @trojan-ws - 3007
```
{
    "offset_port_node": "443",
    "offset_port_node": "3007",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com",
    "allow_insecure": "1",
    "path": "/trojanws"
}
```
## @trojan-tcp - 3008
```
{
    "offset_port_node": "443",
    "offset_port_node": "3008",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com",
    "allow_insecure": "1",
}
```
## @trojan-tcp-path - 3009
```
{
    "offset_port_node": "443",
    "offset_port_node": "3009",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com"
    "network": "tcp",
    "security": "none",
    "header": {
        "type": "http",
        "request": {
            "path": ["/trtc"]
            }
        }
    }
}

```
## @trojan-grpc - 3001
```
{
    "offset_port_node": "443",
    "offset_port_node": "3001",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com",
    "grpc": "1",
    "security": "none",
    "servicename": "trgrpc"
}
```

# ShadowSocks
```
//SS
     "plugin": "", //SS plugin
     "plugin_option": "", //SS plugin parameters

//SSR single-port multi-user
     "mu_port": "443", //Only one can be filled. If not filled, the value will be taken in the order of the port delivered by the node server -> the port delivered in the front end/subscription
     "mu_password": "xxxxxx",//single port password
     "mu_encryption": "none",
     "mu_protocol": "auth_aes128_md5",
     "mu_obfs": "plain",
     "mu_suffix": "cloudfront.net",
```
## @shadowsocks-grpc - 3004
```
{
    "offset_port_node": "443",
    "offset_port_node": "3004",
    "server_sub": "hk.domain.com",
    "host": "hk.domain.com",
    "network": "grpc",
    "security": "none",
    "servicename": "ssgrpc"
}

```
{
"offset_port_user": "25874",
"offset_port_node": "25874",
"server_user": "ss006panel.codepay.online",
"host": "ss006panel.codepay.online",
"mu_encryption": "chacha20-ietf-poly1305",
"plugin": "v2ray-plugin",
"plugin_option": "ws;tls;path=/h48ju7dklf852i"
}
# CLASH
```
// Clash Related, does not affect node configuration delivery
    //reference documents https://github.com/Dreamacro/clash/wiki/configuration
    "plugin-opts": {
        // Corresponds to the plugin-opts configuration in the Clash yaml file
    },
    "ws-opts": {
        // Corresponds to the configuration of ws-opts in the Clash yaml file
    },
    "h2-opts": {
        // Corresponds to the configuration of h2-opts in the Clash yaml file
    },
    "http-opts": {
        // Corresponds to the http-opts configuration in the Clash yaml file
    },
    "grpc-opts": {
        // Corresponds to the configuration of grpc-opts in the Clash yaml file
    }
```