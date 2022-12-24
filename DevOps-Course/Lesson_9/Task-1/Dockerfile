#Deriving the latest base image
FROM python:3.8.2-alpine

#Labels as key value pair
LABEL Maintainer="Shay RM"

# creating a working dir for the app
RUN mkdir -p /opt/app
# Any working directory can be chosen as per choice like '/' or '/home' etc
WORKDIR /opt/app

#to COPY the remote file at working directory in container
COPY getUser.py ./

#CMD instruction should be used to run the software

CMD [ "python", "./getUser.py"]