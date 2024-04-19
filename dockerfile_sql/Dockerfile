# 选择基础镜像
FROM mysql:latest

# 联系人
MAINTAINER laurenl luoran1122@hotmail.com

# 工作/初始目录
WORKDIR /docker-entrypoint-initdb.d

# 设置数据库密码
ENV MYSQL_ROOT_PASSWORD=root

# 将当前目录的内容COPY至指定目录
COPY ./init.sql /docker-entrypoint-initdb.d/
COPY ./script /docker-entrypoint-initdb.d/script

# 执行mysqld命令
CMD ["mysqld"]
