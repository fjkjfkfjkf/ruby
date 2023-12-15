FROM ruby:3.0-alpine

RUN apk update && apk add --no-cache build-base nodejs yarn

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install 

COPY . .

EXPOSE 8080

CMD ["ruby", "main.rb"]
