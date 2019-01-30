FROM node:alpine


RUN npm install -g newman@latest
RUN npm install -g newman-reporter-html@latest
RUN npm install -g newman-reporter-htmlextra

WORKDIR /etc/newman
CMD ["newman"]
