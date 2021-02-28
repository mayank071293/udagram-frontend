FROM node:13
WORKDIR /app
COPY package*.json /app/
RUN npm install -g ionic
RUN npm install
COPY ./ /app/
RUN ionic build
EXPOSE 8100
ENTRYPOINT ["ionic"]
CMD ["serve", "8100", "--address", "0.0.0.0"]