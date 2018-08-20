FROM node:10.9.0-slim

WORKDIR /app

RUN npm install -g create-react-app \
    && groupadd react \
    && useradd react --create-home -g react \
    && chown -R react:react /app

# Run everything after as non-privileged user.
USER react