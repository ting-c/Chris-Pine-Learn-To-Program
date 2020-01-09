array = []
puts 'Enter a single word'
while true
input = gets.chomp
array.push input

if input == ''
	break
end
end

puts 'Here\'s what you have entered in alphabetical order'
puts array.sort
