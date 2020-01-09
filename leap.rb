puts 'LEAP YEAR PROGRAM'
puts 'Give a starting year'
year_start = gets.chomp
puts 'Give an ending year'
year_end = gets.chomp

if year_start.to_i >= year_end.to_i
	puts 'Starting year needs to be smaller than ending year'
	puts 'Please enter again'
puts 'LEAP YEAR TEST'
puts 'Give a starting year'
year_start = gets.chomp
puts 'Give an ending year'
year_end = gets.chomp
end
year_leap = year_start.to_i + (4-(year_start.to_i%4))

puts 'The leap year(s) between ' + year_start + " and " + year_end
if (year_start.to_i%4)==0
	puts year_start
end
if (year_start.to_i%4)!=0
	puts 'None'
end
while year_leap.to_i <= year_end.to_i
puts year_leap 
year_leap = year_leap.to_i + 4

end










