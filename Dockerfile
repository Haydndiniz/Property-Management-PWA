#!/bin/bash
FROM ruby:2.6.6
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y nodejs yarn
ADD . /Rails-Docker
WORKDIR /Rails-Docker
RUN gem install bundler:2.2.17
RUN bundle install
RUN yarn install
EXPOSE 3000
CMD ["bash"]