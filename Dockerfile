#This dockerfile uses the centos7 image  
#
#Author : lonelythinker
#Email : 710366112@qq.com
#Homepage : www.lonelythinker.cn
#   

FROM centos7-base
MAINTAINER lonelythinker <710366112@qq.com>

#关闭firewalld
RUN systemctl stop firewalld
#取消开机启动firewalld
RUN systemctl disable firewalld

#End
