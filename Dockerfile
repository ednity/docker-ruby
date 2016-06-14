FROM ruby:2.3.1

RUN apt-get update -qq
RUN mkdir /myapp

WORKDIR /myapp

ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

RUN bundle install --path=vendor/bundle
