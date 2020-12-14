FROM ruby:2.6.0
WORKDIR /mydir
COPY rails-example-project .
EXPOSE 3000

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

RUN gem install bundler
RUN bundle install

ENV RAILS_LOG_TO_STDOUT true

RUN rails db:migrate RAILS_ENV=production && \
rake assets:precompile 
CMD ["rails", "s", "-e", "production"]
