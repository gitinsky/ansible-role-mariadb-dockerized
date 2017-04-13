FROM scratch
ADD mariadb.nix.tar.gz /
ADD start_mysqld.sh /start_mysqld.sh
EXPOSE 3306
ENTRYPOINT ["/start_mysqld.sh"]
