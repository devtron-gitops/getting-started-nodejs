FROM arm64v8/node:lts-buster

ENV TINI_VERSION v0.19.0
COPY tini .
RUN chmod +x tini
ENTRYPOINT ["tini", "--"]

COPY /.  .
RUN npm install

CMD ["node","app.js"]
