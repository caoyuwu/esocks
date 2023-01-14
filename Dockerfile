#Grab the latest alpine image
FROM alpine:latest

# Install python and pip
#RUN apk add --no-cache --update python3 py3-pip bash
#ADD ./webapp/requirements.txt /tmp/requirements.txt

# Install dependencies
#RUN pip3 install --no-cache-dir -q -r /tmp/requirements.txt

# Add our code
#ADD ./esocks /opt/esocks/
#ADD ./esocks /opt/esocks/esocks
#ADD ./config.json /opt/esocks/config.json
RUN mkdir /opt/esocks
RUN cd /opt/esocks
RUN wget -O /opt/esocks/esocks http://caoyuwu.eu.org/esocks/linux_amd64/esocks
RUN wget -O /opt/esocks/config.json http://caoyuwu.eu.org/esocks/config.json
RUN wget -O /opt/esocks/start-esocks.sh http://caoyuwu.eu.org/esocks/start-esocks.sh

WORKDIR /opt/esocks

RUN chmod +x /opt/esocks/esocks
RUN chmod +x /opt/esocks/start-esocks.sh

USER root
# Run the image as a non-root user
#RUN adduser -D caoyuwu
#USER caoyuwu

#
# Droprax 需要 80端口
#
EXPOSE 80

# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			

#启动容器时要执行的命令
ENTRYPOINT ["/opt/esocks/esocks"]
#ENTRYPOINT ["/opt/esocks/start-esocks.sh"]
#CMD ./esocks 
#CMD source /opt/esocks/start-esocks.sh


