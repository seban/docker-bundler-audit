FROM ruby:2.4-alpine

RUN apk add --no-cache git
RUN gem install bundler-audit
WORKDIR /usr/src/app

CMD ["bundle-audit", "check", "--update"]
