FROM node:lts-alpine3.11

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.schema-version="1.0" \
  org.label-schema.name="skilldlabs-kaizen" \
  org.label-schema.description="Skilld latest Drupal 8 kaizen theme image - Alpine: node, npm, eslint, webpack, stylelint, browser-sync & storybook" \
  org.label-schema.vcs-url="https://github.com/skilld-labs/docker-phpcs-drupal" \
  maintainer="Juan Peña <juan3789@gmail.com>"

ENV NPM_PACKAGES "@babel/core \
  @babel/preset-env \
  @skilld/postcss-drupal-breakpoints \
  @skilld/webpack-drupal-breakpoints-loader \
  autoprefixer \
  babel-loader \
  css-loader \
  css-vars-ponyfill \
  eslint \
  eslint-config-airbnb \
  eslint-config-prettier \
  eslint-plugin-import \
  eslint-plugin-jsx-a11y \
  eslint-plugin-prettier \
  eslint-plugin-react \
  extract-loader \
  file-loader \
  glob \
  js-yaml \
  lodash.debounce \
  lodash.throttle \
  postcss-cli \
  postcss-extend \
  postcss-import \
  postcss-loader \
  postcss-nested \
  prettier \
  stylelint \
  stylelint-config-standard \
  stylelint-no-browser-hacks \
  stylelint-order \
  svg-sprite-loader \
  svg4everybody \
  terser-webpack-plugin \
  webpack \
  webpack-cli \
  webpack-merge \
  webpack-modernizr-loader"

RUN set -e \
  && npm install -g $NPM_PACKAGES \
  && rm -rf /root/.npm /root/.config /tmp/npm*

VOLUME /work
WORKDIR /work

CMD ["webpack"]
