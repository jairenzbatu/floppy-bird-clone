# use the official HTTPD Repository
FROM httpd:2.4

# copy source code to Apache Root Folder
COPY . /usr/local/apache2/htdocs

# set working directory
WORKDIR /usr/local/apache2/htdocs

# expose port 80 as the default port
EXPOSE 80