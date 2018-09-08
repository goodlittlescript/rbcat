FROM ruby:2.5-alpine as base

# set working directory
RUN mkdir -p /app
WORKDIR /app
ENV PATH="/app/bin:$PATH"

# Install app dependencies
COPY Gemfile Gemfile.lock /app/
RUN bundle install --without development

#############################################################################
FROM base as shell

# Install development dependencies
# * curl bash gawk diffutils expect for ts
# * build-base for rubocop
RUN apk add --no-cache curl bash gawk diffutils expect && \
    curl -o /usr/local/bin/ts -L https://raw.githubusercontent.com/thinkerbot/ts/v2.0.2/bin/ts && \
    chmod +x /usr/local/bin/ts && \
    apk add --no-cache build-base && \
    bundle install --with development

#############################################################################
FROM base as app
COPY ./bin /app/bin
COPY ./lib /app/lib
