redis: redis-server /usr/local/etc/redis.conf
web: rails s -p 3000
worker: rake environment resque:work QUEUE=*
