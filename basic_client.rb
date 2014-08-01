require_relative 'app/bot'

bot = Bot.new(:name => ARGV[0], :data_file => 'data/bot_data')
puts bot.greeting

while input = $stdin.gets and input.chomp != 'end'
  puts '>> ' + bot.response_to(input)
end

puts bot.farewell