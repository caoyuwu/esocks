#Grab the latest alpine image
FROM alpine:latest

# Install python and pip
#RUN apk add --no-cache --update python3 py3-pip bash
#ADD ./webapp/requirements.txt /tmp/requirements.txt

# Install dependencies
#RUN pip3 install --no-cache-dir -q -r /tmp/requirements.txt

# Add our code
#ADD ./esocks /opt/esocks/
ADD ./esocks /opt/esocks/esocks
ADD ./config.json /opt/esocks/config.json
WORKDIR /opt/esocks

RUN chmod +x /opt/esocks/esocks

# Run the image as a non-root user
RUN adduser -D caoyuwu
USER caoyuwu

# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			
CMD ./esocks 
