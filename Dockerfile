FROM node:alpine

RUN npm install -g newman@latest;
RUN npm install -g newman-reporter-html@latest;

WORKDIR /etc/newman
CMD ["newman"]
