FROM public.ecr.aws/bitnami/node:12.22.4-debian-10-r10
#RUN apk add --no-cache nodejs npm

WORKDIR /app
COPY package.json /app
RUN npm install

COPY . /app

EXPOSE 3000
CMD ["npm", "start"]
