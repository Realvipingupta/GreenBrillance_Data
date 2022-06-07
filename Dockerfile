# This is Docker build image for Dev - Env
# syntax=docker/dockerfile:1

# Pull official base image
FROM node:14.17.3-alpine3.14

# Install tools required for project
# Run `docker build --no-cache .` to update dependencies
RUN apk add --no-cache git

# Set working directory
WORKDIR /frontend

# Install app dependencies
COPY ./package.json /frontend
RUN npm install

# Copy the entire project and build it
COPY . /frontend

# The command executed when running a Docker container based on this image.
CMD ["npm","run","dev"]

MAINTAINER Vipin Gupta <vipin.g@mantralabsglobal.com>