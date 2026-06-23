FROM postgres:18

RUN apt-get update && apt-get install -y \
    postgresql-${PG_MAJOR}-postgis-3 \
    postgresql-${PG_MAJOR}-postgis-3-scripts \
  && rm -rf /var/lib/apt/lists/*

# No need to override the CMD as the base image already has the correct entrypoint
