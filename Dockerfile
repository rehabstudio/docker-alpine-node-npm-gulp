FROM mhart/alpine-node:6.2.1

RUN apk update && apk add \
	make \
	git \
	python \
	g++ \
	&& rm -rf /var/cache/apk/*

RUN npm install -g gulp
