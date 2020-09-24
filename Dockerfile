FROM centos:7
RUN yum install -y epel-release && yum install --enablerepo=epel -y openconnect vpnc procps net-tools which
ADD entrypoint.sh /entrypoint.sh
HEALTHCHECK  --interval=10s --timeout=10s --start-period=10s \
  CMD /sbin/ifconfig tun0
CMD ["/entrypoint.sh"]
