# 当前所在目录
$currentPath = (Get-Location).Path

# 需要多平台编译
$buildX = (
    # "staneee/aspnet:5-focal-gdi-fontconfig",
    # "staneee/aspnet:6-focal-gdi-fontconfig",
    # "staneee/aspnet:5-focal-puppeteer", # 未完成
    # "staneee/aspnet:6-focal-puppeteer", # 未完成
    # "staneee/dotnet:5-focal",
    # "staneee/dotnet:6-focal",
    # "staneee/dotnet:5-focal-gdi-fontconfig",
    # "staneee/dotnet:6-focal-gdi-fontconfig",    
    # "staneee/nginx:1.19.6-basic",
    # "staneee/nginx:1.19.6-appconfig-prod",
    # "staneee/nginx:1.19.6-appconfig-prod-pda",
    # "staneee/nginx:1.19.6-shell-runner",
    # "staneee/nginx:1.19.6-wait-for-it",
    # "staneee/node:16.13.1",
    # "staneee/powershell:lts-debian-10-focal",
    # "staneee/powershell:lts-debian-10-focal-docker-20-10-21",    
    # "staneee/powershell:lts-debian-10-focal-docker-20-10-21-zip",    
    # "staneee/powershell:lts-debian-10-focal-dotnet-5",
    # "staneee/powershell:lts-debian-10-focal-dotnet-5-node-16",
    # "staneee/powershell:lts-debian-10-focal-dotnet-6",
    # "staneee/powershell:lts-debian-10-focal-dotnet-6-node-16",
    # "staneee/powershell:lts-debian-10-focal-node-14",
    # "staneee/powershell:lts-debian-10-focal-node-16"
    # "staneee/frpc:0.34.3-env",
    # "staneee/common-scripts:alpine-3.17",
    # "staneee/ntp:chrony",
    # "staneee/portainer:agent-2.16.1",
    # "staneee/portainer:ce-2.16.1"
    # "staneee/self-signed-ssl:openssl-1.1.1",
    # "staneee/redis:6.0.16",        
    # "staneee/keepalived:2.0.20",
    # "staneee/keepalived:2.0.20-docker",
    ""
)

# 普通编译
$build = (
    # "staneee/antlr4:4.12.0",
    ""
)


# 创建编译器
docker buildx create --name mybuilder --driver docker-container --bootstrap
docker buildx use mybuilder
docker buildx inspect

