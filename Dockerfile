FROM ruby:2.5.1-alpine3.7

RUN apk add --update build-base postgresql-dev tzdata
RUN gem install bundler

WORKDIR /talent-api-rails
ADD Gemfile Gemfile.lock ./
RUN bundle install

ADD config.ru ./
ADD bin ./bin
ADD lib ./lib

ADD Rakefile ./
ADD README.md ./
ADD public ./public

ADD config ./config
ADD db ./db
ADD test ./test
ADD app ./app

VOLUME /talent-api-rails

CMD ["puma"]
