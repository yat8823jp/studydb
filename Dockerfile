FROM mysql:5.7
RUN yum -y update
RUN yum -y install vi
RUN yum -y reinstall glibc-common
ADD ./my.cnf /etc/mysql/my.cnf
RUN chmod 644 /etc/mysql/my.cnf
RUN localedef -v -c -i ja_JP -f UTF-8 ja_JP.UTF-8; echo "";
ADD ./sql /docker-entrypoint-initdb.d/
RUN chmod 644 /docker-entrypoint-initdb.d/*
ENV LANG=ja_JP.UTF-8
RUN rm -f /etc/localtime
RUN ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
COPY sql/* /docker-entrypoint-initdb.d/
CMD chmod a+x ./docker-entrypoint-initdb.d/2_data.sh
CMD ["mysqld"]
EXPOSE 3307