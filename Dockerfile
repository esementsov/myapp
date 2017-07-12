FROM esementsov/ruby-passenger-alpine:2.4.0
COPY . /app 
WORKDIR /app  
# RUN ${RBENV_ROOT}/shims/bundle config build.pg --with-pg-config=/usr/pgsql-9.4/bin/pg_config 
RUN ${RBENV_ROOT}/shims/bundle install --without development test -j8 --path=/gems --deployment
