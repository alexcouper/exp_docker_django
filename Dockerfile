FROM ubuntu:precise

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y python python-dev python-setuptools
RUN easy_install pip

# install nginx
RUN apt-get install -y python-software-properties
RUN apt-get install -y sqlite3

#
RUN pip install virtualenv

RUN mkdir /opt/app
ADD . /opt/app

WORKDIR /opt/app

RUN virtualenv . -p python2.7

RUN ls -lah /opt/app/dummyapp
RUN . /opt/app/bin/activate && pip install -r /opt/app/requirements.txt

WORKDIR /opt/app/dummyapp

EXPOSE 8000
CMD ["/opt/app/bin/python", "manage.py", "runserver", "0.0.0.0:8000"]
