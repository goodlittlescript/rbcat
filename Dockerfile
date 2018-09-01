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
# * curl bash gawk for ts
# * build-base for rubocop
RUN apk add --no-cache curl bash gawk && \
    cd /usr/local/lib && \
    curl -OL https://github.com/thinkerbot/ts/archive/v2.0.1.tar.gz && \
    tar -xvzf v2.0.1.tar.gz && \
    ln -s /usr/local/lib/ts-2.0.1/bin/ts /usr/local/bin/ts && \
    rm v2.0.1.tar.gz && \
    cd /app && \
    apk add --no-cache build-base && \
    bundle install --with development

#############################################################################
FROM base as app
COPY ./lib ./bin /app/
