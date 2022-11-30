FROM node:14-alpine

RUN apk update && apk add git

RUN git clone https://github.com/marqueschristmann/Docker_app_Frontend.git

WORKDIR /Docker_app_Frontend/


# add '/app/node_modules/.bin' to $PATH
#ENV PATH /app/node_modules/.bin:$PATH
# install application dependencies
#COPY package*.json ./
RUN npm install
# RUN npm install react-scripts -g

# copy app files
#COPY . .

EXPOSE 3000
CMD ["npm", "start"]