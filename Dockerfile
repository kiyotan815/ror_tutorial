FROM ruby:2.4.3
RUN apt-get update -qq && apt-get install -y build-essential nodejs libpq-dev vim
RUN mkdir /myapp
ENV RAILS_ENV=production RACK_ENV=production
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
RUN RAILS_ENV=production rails assets:precompile

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
