FROM ruby:3.1.2

# Instalar Node.js y npm
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn
RUN npm install

WORKDIR /usr/src/app

COPY . .
RUN bundle install