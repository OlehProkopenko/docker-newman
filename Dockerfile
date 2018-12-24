FROM node:alpine
#ENV NEWMAN_VERSION 4.2.3


RUN npm install -g newman@4.2.3
RUN npm install -g newman-reporter-html@latest;

WORKDIR /etc/newman
CMD ["newman"]
