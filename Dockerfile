FROM andersonpierok/ruby-2.1.2

WORKDIR /teste

RUN gem install bundler -v 1.17.3

COPY Gemfile ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0", "-p", "3000"]