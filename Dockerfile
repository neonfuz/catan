FROM node:12-alpine

WORKDIR /build/
COPY package.json yarn.lock ./
RUN yarn

WORKDIR /app
RUN echo 'ln -sf /build/node_modules /app' > /build/devshell.sh
ENV ENV=/build/devshell.sh
ENTRYPOINT ["/bin/ash"]
