# Initialize redis, with hiredis as the driver

uri = URI.parse(ENV["REDIS_URL"])
if uri
  $redis = Redis.new(:driver => :hiredis, :url => uri)
else
  $redis = Redis.new(:driver => :hiredis)
end

