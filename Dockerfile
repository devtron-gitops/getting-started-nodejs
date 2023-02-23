FROM arm64v8/node:lts-buster

ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-arm64 tini
RUN chmod +x tini
ENTRYPOINT ["tini", "--"]

COPY /.  .
RUN npm install

CMD ["node","app.js"]
