# Panel type: SSpanel, V2board, NewV2board, PMpanel, Proxypanel, V2RaySocks
if [ -z "$SSPANEL_TYPE" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    exit
else
    sed -i -e "s/^.*(PanelType):.*(SSpanel).?/PanelType: \"$SSPANEL_TYPE\"/g" 
fi


if [ -z "$SSPANEL_ApiHost" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    exit
else
    sed -i -e "s/^.*(ApiHost):.*(http://127.0.0.1:667).?/ApiHost: \"$SSPANEL_ApiHost\"/g" 
fi

if [ -z "$SSPANEL_ApiKey" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    exit
else
    sed -i -e "s/^.*(ApiKey):.*(123).?/ApiKey: \"$SSPANEL_ApiKey\"/g" 
fi

if [ -z "$SSPANEL_NodeID" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    exit
else
    sed -i -e "s/^.*(NodeID):.*(41).?/NodeID: \"$SSPANEL_NodeID\"/g" 
fi

# Node type: V2ray, Shadowsocks, Trojan, Shadowsocks-Plugin
if [ -z "$SSPANEL_NodeType" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    exit
else
    sed -i -e "s/^.*(NodeType):.*(V2ray).?/NodeType: \"$SSPANEL_NodeType\"/g" 
fi

# Timeout for the api request
if [ -z "$SSPANEL_NodeTimeout" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    exit
else
    sed -i -e "s/^.*(Timeout):.*(30).?/Timeout: \"$SSPANEL_NodeTimeout\"/g" 
fi

# Enable Vless for V2ray Type
if [ -z "$SSPANEL_NodeVless" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else if [ "$SSPANEL_NodeVless" = true ]; then
    sed -i -e "s/^.*(EnableVless):.*(false).?/EnableVless: \"$SSPANEL_NodeVless\"/g" 
fi

# Enable XTLS for V2ray and Trojan
if [ -z "$SSPANEL_NodeXTLS" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else if [ "$SSPANEL_NodeXTLS" = true ]; then
    sed -i -e "s/^.*(EnableXTLS):.*(false).?/EnableXTLS: \"$SSPANEL_NodeXTLS\"/g" 
fi

# Mbps, Local settings will replace remote settings, 0 means disable
if [ -z "$SSPANEL_NodeSpeedLimit" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(SpeedLimit):.*(0).?/SpeedLimit: \"$SSPANEL_NodeSpeedLimit\"/g" 
fi

# Local settings will replace remote settings, 0 means disable
if [ -z "$SSPANEL_NodeDeviceLimit" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(DeviceLimit):.*(0).?/DeviceLimit: \"$SSPANEL_NodeDeviceLimit\"/g" 
fi

# /etc/XrayR/rulelist Path to local rulelist file
if [ -z "$SSPANEL_NodeRuleListPath" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(RuleListPath):.?/RuleListPath: \"$SSPANEL_NodeRuleListPath\"/g" 
fi


# IP address you want to listen
if [ -z "$XRAYR_ListenIP" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(ListenIP):.*(0.0.0.0).?/ListenIP: \"$XRAYR_ListenIP\"/g" 
fi

# IP address you want to send pacakage
if [ -z "$XRAYR_SendIP" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(SendIP):.*(0.0.0.0).?/SendIP: \"$XRAYR_SendIP\"/g" 
fi

# Time to update the nodeinfo, how many sec.
if [ -z "$XRAYR_NodeUpdatePeriodic" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(UpdatePeriodic):.*(60).?/UpdatePeriodic: \"$XRAYR_NodeUpdatePeriodic\"/g" 
fi

# Time to update the nodeinfo, how many sec.
if [ -z "$XRAYR_NodeEnableDNS" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(EnableDNS):.*(false).?/EnableDNS: \"$XRAYR_NodeEnableDNS\"/g" 
fi

# AsIs, UseIP, UseIPv4, UseIPv6, DNS strategy
if [ -z "$XRAYR_DNSType" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(DNSType):.*(AsIs).?/DNSType: \"$XRAYR_NodeDNSType\"/g" 
fi

# AsIs, UseIP, UseIPv4, UseIPv6, DNS strategy
if [ -z "$XRAYR_EnableProxyProtocol" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(EnableProxyProtocol):.*(false).?/EnableProxyProtocol: \"$XRAYR_EnableProxyProtocol\"/g" 
fi

# # TLS SNI(Server Name Indication), Empty for any
if [ -z "$XRAYR_SNI" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(SNI):.?/SNI: \"$XRAYR_SNI\"/g" 
fi

# Alpn, Empty for any
if [ -z "$XRAYR_Alpn" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(Alpn):.?/Alpn: \"$XRAYR_Alpn\"/g" 
fi

# HTTP PATH, Empty for any
if [ -z "$XRAYR_Path" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(Path):.?/Path: \"$XRAYR_Path\"/g" 
fi

# Required, Destination of fallback, check https://xtls.github.io/config/features/fallback.html for details.
if [ -z "$XRAYR_Dest" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(Dest):.*(80).?/Dest: \"$XRAYR_Dest\"/g" 
fi

# Send PROXY protocol version, 0 for dsable
if [ -z "$XRAYR_ProxyProtocolVer" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(ProxyProtocolVer):.*(0).?/ProxyProtocolVer: \"$XRAYR_ProxyProtocolVer\"/g" 
fi

# Option about how to get certificate: none, file, http, tls, dns. Choose "none" will forcedly disable the tls config.
if [ -z "$XRAYR_CertMode" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(CertMode):.*(dns).?/CertMode: \"$XRAYR_CertMode\"/g" 
fi

# Option about how to get certificate: none, file, http, tls, dns. Choose "none" will forcedly disable the tls config.
if [ -z "$XRAYR_CertDomain" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(CertDomain):.*(node1\.test\.com).?/CertDomain: \"$XRAYR_CertDomain\"/g" 
fi

# Provided if the CertMode is file
if [ -z "$XRAYR_CertFile" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(CertFile):.*(\/etc\/XrayR\/cert\/node1\.test\.com\.cert).?/CertFile: \"$XRAYR_CertFile\"/g" 
fi

# Provided if the CertMode is file
if [ -z "$XRAYR_KeyFile" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(KeyFile):.*(\/etc\/XrayR\/cert\/node1\.test\.com\.key).?/KeyFile: \"$XRAYR_KeyFile\"/g" 
fi

# Provided if the CertMode is file
if [ -z "$XRAYR_Provider" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(Provider):.*(alidns).?/Provider: \"$XRAYR_Provider\"/g" 
fi

# Provided if the CertMode is file
if [ -z "$XRAYR_Email" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(Email):.*(test\@me\.com).?/Email: \"$XRAYR_Email\"/g" 
fi

# Provided if the CertMode is file
if [ -z "$XRAYR_CLOUD_ACCESS_KEY" ]; then
    echo >&2 "SSPANEL_TYPE not set!"
    # exit
else
    sed -i -e "s/^.*(ALICLOUD_ACCESS_KEY):.*(aaa).?/ALICLOUD_ACCESS_KEY: \"$XRAYR_CLOUD_ACCESS_KEY\"/g" 
fi

function replaceXrayRConfig(){

    if test -s ${configXrayRConfigFilePath}; then

        echo
        green "please chooseSSL certificateApplication method: 1 XrayR built-in http Way, 2 passacme.sh Application and place the certificate file, "
        green "The default is to enter directly XrayR built-in http automatic Application model"
        green "choose no then passacme.shApplication certificate, Support more modelApplication certificates such as http and dns, it is recommended to use"
        echo
        green "Notice: XrayR There are 4 types of SSL certificates for Application Way: 1 XrayR built-in http Way, 2 XrayR built-in dns Way, 3 file Manually place certificate files, 4 none Not Application certificate"
        green "use if necessary XrayR built-indns Application SSL certificate method, Please edit manually ${configXrayRConfigFilePath} configuration file"
    
        read -p "please chooseSSL certificateApplication method ? The default is to enter directlyhttp automatic Application model, choose no则Manually place certificate files will also automatically apply the certificate, please enter[Y/n]:" isSSLRequestHTTPInput
        isSSLRequestHTTPInput=${isSSLRequestHTTPInput:-Y}

        configXrayRSSLRequestMode="http"
        if [[ $isSSLRequestHTTPInput == [Yy] ]]; then
            echo
            green " ================================================== "
            yellow " please enter is bound to the domain name of this VPS E.g www.xxx.com: (In this step, please close the CDN and install after nginx to avoid the failure of the Application certificate due to port 80 occupation)"
            green " ================================================== "

            read configSSLDomain
        else
            configSSLCertPath="${configSSLCertPathV2board}"
            getHTTPSCertificateStep1
            configXrayRSSLRequestMode="file"
            sed -i "s?./cert/node1.test.com.cert?${configSSLCertPath}/${configSSLCertFullchainFilename}?g" ${configXrayRConfigFilePath}
            sed -i "s?./cert/node1.test.com.key?${configSSLCertPath}/${configSSLCertKeyFilename}?g" ${configXrayRConfigFilePath}
        fi

        sed -i "s/CertMode: dns/CertMode: ${configXrayRSSLRequestMode}/g" ${configXrayRConfigFilePath}
        sed -i 's/CertDomain: "node1.test.com"/CertDomain: "www.xxxx.net"/g' ${configXrayRConfigFilePath}
        sed -i "s/www.xxxx.net/${configSSLDomain}/g" ${configXrayRConfigFilePath}

        echo
        read -p "please Choose Supported Panel Types ? The default is to enter directly V2board, choose no then SSpanel, please enter[Y/n]:" isXrayRPanelTypeInput
        isXrayRPanelTypeInput=${isXrayRPanelTypeInput:-Y}
        configXrayRPanelType="SSpanel"

        if [[ $isXrayRPanelTypeInput == [Yy] ]]; then
            configXrayRPanelType="V2board"
            sed -i 's/PanelType: "SSpanel"/PanelType: "V2board"/g' ${configXrayRConfigFilePath}
        fi

        
        echo
        green "please enter Panel Domain Name, E.g www.123.com Do not prefix with http or https Do not end with /"
        green "Please ensure that the input domain name of other panels of V2boardor supports Https access, If you want to change to http Please edit manually configuration file ${configXrayRConfigFilePath}"
        read -p "please enter Panel Domain Name :" inputV2boardDomain
        sed -i "s?http://127.0.0.1:667?https://${inputV2boardDomain}?g" ${configXrayRConfigFilePath}

        read -p "please enter ApiKey communication key:" inputV2boardWebApiKey
        sed -i "s/123/${inputV2boardWebApiKey}/g" ${configXrayRConfigFilePath}

        read -p "please enter Node ID (pure numbers):" inputV2boardNodeId
        sed -i "s/41/${inputV2boardNodeId}/g" ${configXrayRConfigFilePath}
    

        echo
        read -p "please Node types supported by choose ? The default is to enter directly V2ray, choose no is Trojan, please enter[Y/n]:" isXrayRNodeTypeInput
        isXrayRNodeTypeInput=${isXrayRNodeTypeInput:-Y}
        configXrayRNodeType="V2ray"

        if [[ $isXrayRNodeTypeInput == [Nn] ]]; then
            configXrayRNodeType="Trojan"
            sed -i 's/NodeType: V2ray/NodeType: Trojan/g' ${configXrayRConfigFilePath}

        else
            echo
            read -p "Whether to enable Vless protocol for V2ray ? By default, press Enter to select No, the Vmess protocol is enabled by default, and the Vless protocol is enabled by selecting Yes, please enter[y/N]:" isXrayRVlessSupportInput
            isXrayRVlessSupportInput=${isXrayRVlessSupportInput:-N}

            if [[ $isXrayRVlessSupportInput == [Yy] ]]; then
                sed -i 's/EnableVless: false/EnableVless: true/g' ${configXrayRConfigFilePath}
            fi

            echo
            read -p "Do you want to enable XTLS for V2ray? By default, press Enter to select No, Tls is enabled by default, and XTLS is enabled if Yes is selected, please enter[y/N]:" isXrayRXTLSSupportInput
            isXrayRXTLSSupportInput=${isXrayRXTLSSupportInput:-N}

            if [[ $isXrayRXTLSSupportInput == [Yy] ]]; then
                sed -i 's/EnableXTLS: false/EnableXTLS: true/g' ${configXrayRConfigFilePath}
            fi

        fi


        sed -i "s?# ./access.Log?${configXrayRAccessLogFilePath}?g" ${configXrayRConfigFilePath}
        sed -i "s?# ./error.log?${configXrayRErrorLogFilePath}?g" ${configXrayRConfigFilePath}
        sed -i "s?Level: none?Level: info?g" ${configXrayRConfigFilePath}
            

        XrayR restart 

    fi

    manageXrayR
}