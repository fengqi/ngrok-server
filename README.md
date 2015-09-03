# ngrok-server

Docker 下部署 Ngrok 服务端.

1. 外部编译好 Ngrokd.
2. 编译后 Ngrokd 复制到 Docker 中并开启服务, 这里也可以在内部编译.
3. 启动容器, 端口映射到本地.
4. 通过 Nginx 把提供 HTTP 服务.
