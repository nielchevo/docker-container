FROM postgres:14.9

RUN apt-get update && apt-get install -y \
  postgresql-14-postgis-3 \
  postgresql-14-postgis-3-scripts \
  && rm -rf /var/lib/apt/lists/*

# No need to override the CMD as the base image already has the correct entrypoint
