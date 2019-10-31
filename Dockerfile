FROM alpine:latest
RUN apk add --update nodejs npm git

WORKDIR /
COPY package.json bower.json Gruntfile.coffee /
RUN mkdir /backup && mkdir /logs && mkdir /uploads
VOLUME data
RUN npm install
RUN npm install -g bower grunt-cli
RUN bower install --allow-root
RUN npm install -g modclean
RUN modclean -r -n default:safe,default:caution
RUN npm uninstall -g modclean
COPY src/ /src
RUN grunt build
RUN rm -rf bower_components/

ENV NODE_ENV=production
ENV PORT=4444

EXPOSE 4444
CMD node --expose-gc server/app.js