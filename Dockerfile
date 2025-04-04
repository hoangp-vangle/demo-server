# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

FROM node:20

WORKDIR /home/node/app

ENV PORT=PORT
COPY package*.json ./
RUN npm install
COPY . .

ARG PORT=3001
ENV PORT=${PORT}
EXPOSE  ${PORT}
CMD [ "npm", "start" ]