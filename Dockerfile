FROM postgres

RUN apt-get update && apt-get install -y postgresql-contrib

ADD installExtension.sh /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/installExtension.sh