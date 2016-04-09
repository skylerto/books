# Initialize redis, with hiredis as the driver

if Rails.env.development?
  $redis = Redis.new(:driver => :hiredis)
else
  uri = URI.parse(ENV["REDIS_URL"])
  $redis = Redis.new(:driver => :hiredis, :url => uri)
end

