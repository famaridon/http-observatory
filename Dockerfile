FROM python:3.7-slim

# set a working directory
WORKDIR /http-observatory

# update, upgrade
RUN apt-get update && \
	apt-get install git python3-dev gcc openssl libpq-dev -y && \
	apt-get clean

# clone the repo
RUN git clone https://github.com/mozilla/http-observatory.git . && \
	pip install --upgrade . && \
	pip install --upgrade -r requirements.txt

ENTRYPOINT ["httpobs-local-scan"]
