FROM postgres:9.4

COPY initdb/initdb.sh /docker-entrypoint-initdb.d/
