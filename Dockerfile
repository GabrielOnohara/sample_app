  FROM ruby:3.0.0 AS builder
  RUN apt-get update \  
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get update \ 
    && apt-get install -y nodejs \
    && npm install -g yarn \
    && apt-get update
  WORKDIR /app
  COPY Gemfile* .
  RUN bundle install && yarn install --check-files && rails webpacker:install
  COPY . .
  EXPOSE 3000
  CMD ["rails", "server", "-b", "0.0.0.0"]