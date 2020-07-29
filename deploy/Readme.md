docker swarm集群环境部署ELK
# 组建docker swarm集群

# 防火墙问题自行解决


# 部署顺序

    1. 启动zookeeper集群， 查看zookeeper集群正常     部署指令: docker stack deploy -c zookeeper.yml elk
    2. 启动kafka集群，查看日志确保集群正常           部署指令: docker stack deploy -c kafka.yml  elk
    3. 启动elasticsearch集群，查看日志确保集群正常   部署指令: docker stack deploy -c elasticsearch.yml elk
    4. 启动logstash，查看日志是否正常               部署指令: docker stack deploy -c logstash.yml   elk
    5. 启动kibana,                                 部署指令: docker stack deploy -c kibana.yml  elk
    6. 启动elk代理nginx 查看nginx启动正常           部署指令: docker stack deploy -c elk_nginx.yml elk

# 采集日志端安装filebeat

    目录: deploy/filebeat  此filebeat目录我已上传外围工程的other目录下
    按需修改挂载日志路径即可，部署指令 docker-compose up -d
    
### elasticsearch

    elasticsearch的jvm参数，在IDC1中定义8G内存，后续根据数据量再叠加新增
    es-head: 是elasticsearch的插件，用于查看管理集群索引
