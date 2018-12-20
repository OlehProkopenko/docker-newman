FROM node:alpine
ENV NEWMAN_VERSION 4.2.3


RUN npm install -g flatted@latest;
RUN npm install -g newman@${NEWMAN_VERSION};
RUN npm install -g newman-reporter-html@latest;

WORKDIR /etc/newman
CMD ["newman"]
