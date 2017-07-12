#!/bin/bash
 
# /usr/local/rbenv/shims/bundle exec rake assets:clobber      # Remove compiled assets
# /usr/local/rbenv/shims/bundle exec rake assets:precompile   # Compile all the assets named in config.assets.precompile
# external CDN:
# rsync -e ssh -azrhtgoul --no-g --no-o --compress-level=9 --timeout=30 --delete-after /app/public/assets root@$CDN_HOST:/var/www/cdn/$CDN_FOLDER/
/usr/local/rbenv/shims/passenger start -p 80 -e production --log-level 4
