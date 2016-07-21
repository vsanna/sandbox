# trapの確認

puts "my pid is #{Process.pid}"

# kill -2 #{pid}に反応
# ctrl + cと同等
trap :INT do
  puts 'interrupt!'
  exit
end

# 同様
# Signal.trap("INT"){
#   puts 'interrupt by Signal'
#   exit
# }

# trap :KILL do
#   puts 'killed!'
#   exit
# end

# kill -15 #{pid}に反応
trap :TERM do
  puts 'termed!'
  exit
end

# kill -1 #{pid}に反応
trap :HUP do
  puts 'hung up!'
  exit
end

@count = 0
loop do
  sleep 1
  puts @count
  @count += 1 
end
