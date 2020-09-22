FROM centos:7
RUN yum install -y procps
ADD anyconnect-linux64-4.6.01103-core-vpn-webdeploy-k9.sh /anyconnect-linux64-4.6.01103-core-vpn-webdeploy-k9.sh
RUN chmod +x anyconnect-linux64-4.6.01103-core-vpn-webdeploy-k9.sh && ./anyconnect-linux64-4.6.01103-core-vpn-webdeploy-k9.sh --yes
ADD entrypoint.sh /entrypoint.sh
HEALTHCHECK  --interval=10s --timeout=10s --start-period=10s \
  CMD /sbin/ifconfig tun0
CMD ["/entrypoint.sh"]
