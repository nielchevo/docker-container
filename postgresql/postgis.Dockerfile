FROM postgres:14.9

RUN apt-get update && apt-get install -y postgresql-14-postgis-3

CMD ["/usr/local/bin/docker-entrypoint.sh","postgres"]