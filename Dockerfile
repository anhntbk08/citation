FROM node:7.6-slim

# Enviroment variables
ENV HOMEDIR /data
RUN apt-get update && apt-get install -y \
	build-essential \
	libssl-dev \
	git \
	&& mkdir -p ${HOMEDIR}
WORKDIR ${HOMEDIR}

# install all dependencies
ADD package.json ./
RUN npm install

# add node content initially
ADD . .
RUN npm run bootstrap
RUN npm run build

EXPOSE 4000

CMD cd ./citation-demo && npm start
