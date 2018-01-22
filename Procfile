web: rails s -p 3000
redis: redis-server /usr/local/etc/redis.conf
worker: rake environment resque:work QUEUE=*
