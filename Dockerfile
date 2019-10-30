FROM alpine:latest
RUN apk add --update nodejs npm git
RUN node -v


WORKDIR /
COPY package.json bower.json Gruntfile.coffee /
COPY src/ /src
RUN ls
RUN mkdir /data && mkdir /backup && mkdir /logs && mkdir /uploads
RUN npm install
RUN npm install -g bower grunt-cli
RUN bower install --allow-root
RUN grunt build
RUN npm install -g modclean
RUN modclean -r -n default:safe,default:caution
RUN npm uninstall -g modclean
RUN rm -rf bower_components/

ENV NODE_ENV=production
ENV PORT=4444

EXPOSE 4444
CMD node --expose-gc server/app.js