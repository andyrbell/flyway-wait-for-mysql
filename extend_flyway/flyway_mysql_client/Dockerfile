FROM boxfuse/flyway:latest

RUN apt-get update && \
    apt-get install -y mysql-client && \
    mkdir /flyway/bin

ADD wait-for-mysql.sh /flyway/bin/wait-for-mysql.sh

RUN chmod 755 /flyway/bin/wait-for-mysql.sh
