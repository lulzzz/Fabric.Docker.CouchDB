FROM klaemo/couchdb:2.0.0

COPY vm.args /opt/couchdb/etc

COPY ./docker-entrypoint.sh /
COPY ./configure-cluster.sh /opt/couchdb/configure-cluster.sh
COPY ./wait-for-it.sh /opt/couchdb/wait-for-it.sh

RUN chmod +x /docker-entrypoint.sh \
	&& chmod +x /opt/couchdb/configure-cluster.sh \
	&& chmod +x /opt/couchdb/wait-for-it.sh

EXPOSE 5984 4369 9100-9200
