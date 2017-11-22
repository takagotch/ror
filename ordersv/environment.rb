require 'memcache'

CACHE = MemCache.new :namespace => RAILS_ENV, :readonly => false
CACHE.servers = '127.0.0.1:11211'

config.load_paths += %W(
  #{RAILS_ROOT}/app/models/lofical
  #{RAILS_ROOT}/app/controllers/service
)

