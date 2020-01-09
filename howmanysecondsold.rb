puts ' Enter your birth year'
year = gets.chomp
puts ' Enter your birth month'
month = gets.chomp
puts ' Enter your birth day'
day = gets.chomp

birth_time = Time.mktime(year,month,day)
billion_seconds_old = birth_time + 1000000000
puts 'You will be one billion seconds old at ' + billion_seconds_old.to_s
