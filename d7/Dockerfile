FROM mhart/alpine-node:7

VOLUME /work
WORKDIR /work

ENV NPM_PACKAGES "node-sass \
  webpack-dev-server \
  webpack-stream \
  babel-core \
  babel-loader \
  babel-plugin-transform-runtime \
  babel-polyfill \
  babel-preset-es2015 \
  breakpoint-sass \
  chroma-sass \
  compass-importer \
  del \
  eslint \
  glob \
  gulp \
  gulp-concat \
  gulp-eslint \
  gulp-if \
  gulp-sass \
  gulp-sass-lint \
  gulp-sourcemaps \
  gulp-uglify \
  gulp.spritesmith \
  normalize-scss \
  sass-rem \
  sass-toolkit \
  script-loader \
  typey \
  yargs \
  node-sass-asset-functions"

RUN apk add --no-cache git \
  && npm --unsafe-perm install -g \
    LPGhatguy/node-sass-glob \
    webpack@3 susy@2 \
    $NPM_PACKAGES \
  && apk del --no-cache --purge git \
  && mkdir /.cache /.config \
  && chmod 777 /.cache /.config \
  && rm -rf /root/.npm /root/.config /tmp/npm*

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["gulp"]
