require 'memcache'

CACHE = MemCache.new :namespace => RAILS_ENV, :readonly => false
CACHE.servers = '127.0.0.1:11211'



