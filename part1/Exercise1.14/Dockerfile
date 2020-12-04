FROM ruby:2.6.0
WORKDIR /mydir
COPY rails-example-project .

#RUN touch rails-example-project\secrets.yml
#CMD ["echo", "production: \n secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>", ,">> secrets.yml"]

RUN apt-get update 
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

RUN gem install bundler
RUN bundle install

#CMD ["rails", "credentials:edit"]
CMD ["rails", "db:migrate", "RAILS_ENV=production", "SECRET_KEY_BASE=production_test_key rails c"]
CMD ["rake", "assets:precompile"]
CMD ["rails", "s", "-e", "production"]
#CMD ["rails", "s"]



