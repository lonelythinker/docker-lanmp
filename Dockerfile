# This dockerfile uses the centos7 image  
#
# Author : lonelythinker
# Email : 710366112@qq.com
# Homepage : www.lonelythinker.cn
#   

FROM centos:latest
MAINTAINER lonelythinker <710366112@qq.com>

# 关闭firewalld
RUN systemctl stop firewalld
# 取消开机启动firewalld
RUN systemctl disable firewalld

# 安装MariaDB
RUN yum -y install mariadb mariadb-server
VOLUME /var/lib/mysql
# 设置MariaDB开机自启动
systemctl enable mariadb
# 启动MariaDB
systemctl start mariadb

# 安装Apache
RUN yum -y install httpd
# 设置Apache开机自启动
systemctl enable httpd
# 启动Apache
systemctl start httpd

#End
