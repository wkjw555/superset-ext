FROM apache/superset:3.0.0rc2

# Switching to root to install the required packages
USER root

RUN pip install mysqlclient
RUN pip install psycopg2-binary
RUN pip install clickhouse-connect
RUN pip install cockroachdb
RUN pip install pyhive
RUN pip install pymssql
RUN pip install trino
RUN pip install elasticsearch-dbapi


# Switching back to using the `superset` user
USER superset
