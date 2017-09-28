FROM rocker/verse:3.4.1

ENV VERSION=1.1.375
RUN cd /tmp && \
    wget https://s3.amazonaws.com/rstudio-dailybuilds/rstudio-server-$VERSION-amd64.deb
RUN dpkg -i /tmp/rstudio-server-$VERSION-amd64.deb
RUN rm /tmp/rstudio-server-$VERSION-amd64.deb 
