# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

FROM node:20

WORKDIR /home/node/app

ARG PORT=80
ENV PORT=${PORT}

COPY package*.json ./
RUN npm install
COPY . .

EXPOSE  ${PORT}
CMD [ "npm", "start" ]
