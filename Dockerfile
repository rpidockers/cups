#
# rpidockers/cups Dockerfile
#
 
FROM sdhibit/rpi-raspbian 

# Install prerequisites
RUN \
  apt-get update && \
  apt-get install -y cups

ADD cupsd.conf /etc/cups/
ADD run.sh /bin/

EXPOSE 631

CMD /bin/run.sh
