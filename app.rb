require 'sinatra'
require 'redis'

get '/' do
    redis = Redis.new(host: (ENV['REDIS_HOST'] || "localhost"), port: (ENV['REDIS_PORT'] || 6379))
    count = redis.get('count').to_i || 0
    count += 1
    redis.set('count', count)

    count.to_s
end
