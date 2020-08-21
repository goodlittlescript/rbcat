FROM ruby:2.5-alpine as base

# set working directory
RUN addgroup -g 1001 -S appuser && \
    adduser -u 1001 -S appuser -G appuser && \
    mkdir -p /app && \
    chown appuser:appuser /app
WORKDIR /app
ENV PATH="/app/bin:$PATH"

# Install development dependencies
# * curl bash gawk diffutils expect for ts
# * build-base for rubocop
RUN apk add --no-cache curl bash gawk diffutils expect && \
    curl -o /usr/local/bin/ts -L https://raw.githubusercontent.com/thinkerbot/ts/v2.0.3/bin/ts && \
    chmod +x /usr/local/bin/ts && \
    apk add --no-cache build-base
  
# Install app dependencies
COPY Gemfile Gemfile.lock /app/
RUN bundle install
USER appuser
