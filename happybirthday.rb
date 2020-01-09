puts ' Enter your birth year'
year = gets.chomp
puts ' Enter your birth month'
month = gets.chomp
puts ' Enter your birth day'
day = gets.chomp

birth_time = Time.mktime(year,month,day)
year_now = Time.now.year
month_now = Time.now.month
day_now = Time.now.day

if month_now > month.to_i 
year_diff = year_now - year.to_i
elsif month_now == month.to_i && day_now >= day.to_i
    year_diff = year_now - year.to_i
else year_diff = year_now - (year.to_i + 1)
end
if year_diff == 0
    exit
end
puts 'You\'re ' + year_diff.to_s

while year_diff > 0 
    puts 'SPANK!'
    year_diff = year_diff - 1
end