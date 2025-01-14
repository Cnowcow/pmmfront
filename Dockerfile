FROM node:20-alpine

WORKDIR /usr/src/app

COPY package.json ./
COPY .env ./

RUN npm install

ARG REACT_APP_NAVER_MAP_CLIENT_ID
ARG REACT_APP_KAKAO_MAP_KEY
ARG REACT_APP_API_URL

ENV REACT_APP_NAVER_MAP_CLIENT_ID=$REACT_APP_NAVER_MAP_CLIENT_ID
ENV REACT_APP_KAKAO_MAP_KEY=$REACT_APP_KAKAO_MAP_KEY
ENV REACT_APP_API_URL=$REACT_APP_API_URL
ENV CI=false

COPY ./ ./

CMD ["npm", "run", "start"]
