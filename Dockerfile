FROM ruby:3.3.0-bookworm

ENV RAILS_ENV development

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install --jobs 3
RUN apt update && apt install -y nodejs