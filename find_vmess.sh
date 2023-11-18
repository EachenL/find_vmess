#!/bin/bash

# 启动 v2ray 并发送选择命令，然后获取输出
output=$(echo "3" | v2ray)

# 使用 awk 处理输出，提取完整的 vmess:// 链接
vmess_link=$(echo "$output" | awk '/vmess:\/\//{print $0; exit}')

# 打印 vmess 链接
echo "$vmess_link"
