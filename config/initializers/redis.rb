# Initialize redis, with hiredis as the driver
$redis = Redis.new(:driver => :hiredis)
