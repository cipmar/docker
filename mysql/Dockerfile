FROM mysql

ENV MYSQL_DATABASE=test
ENV MYSQL_ROOT_PASSWORD=password

COPY ./sql-scripts /docker-entrypoint-initdb.d/
