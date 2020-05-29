# directions for docker/contqiner

# import latest python and alpine(linux distro)
FROM python:3.8.2-alpine3.11

# make a directory called app to put all container/docker stuff in
RUN mkdir -p /app
# set app directory as working directory
WORKDIR /app

# copy req.txt from src directory to the app directory under req.txt name
COPY ./src/requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# copy src directory to app
COPY ./src/ /app/
# create environment variable for flask app
ENV FLASK_APP=server.py

# command to start app
CMD flask run -h 0.0.0.0 -p 5000


