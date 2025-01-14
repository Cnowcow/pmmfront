FROM node:20-alpine

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

# GitHub Actions에서 환경 변수로 .env 파일을 대체하여 직접 환경 변수 설정
RUN echo "REACT_APP_NAVER_MAP_CLIENT_ID=$REACT_APP_NAVER_MAP_CLIENT_ID" > .env && \
    echo "REACT_APP_KAKAO_MAP_KEY=$REACT_APP_KAKAO_MAP_KEY" >> .env && \
    echo "REACT_APP_API_URL=$REACT_APP_API_URL" >> .env && \
    echo "CI=false" >> .env

COPY ./ ./

CMD ["npm", "run", "start"]
