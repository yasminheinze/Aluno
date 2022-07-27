FROM httpd:latest
RUN apt-get update && apt-get upgrade
RUN apt-get install -y nano net-tools
COPY ./Pets /usr/local/apache2/htdocs/
