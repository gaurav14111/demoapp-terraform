FROM httpd:latest
COPY index.html /usr/local/apache2/htdocs/
RUN apt-get update
CMD "echo docker"
ENV myvar=mykey
WORKDIR usr/local/apache2