FROM ruby:2.1-alpine
MAINTAINER Andy Postnikov

ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base

# Update and install all of the required packages.
# At the end, remove the apk cache
COPY Gemfile /usr/app/
COPY Gemfile.lock /usr/app/
RUN apk add --no-cache $BUILD_PACKAGES && \
  cd /usr/app && \
  bundle install && \
  apk del --no-cache $BUILD_PACKAGES

WORKDIR /work

CMD ["compass", "compile", "-e", "production", "-s", "compact"]
