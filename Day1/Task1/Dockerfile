FROM nginx:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y nano net-tools
COPY ./Pets /usr/share/nginx/html/
