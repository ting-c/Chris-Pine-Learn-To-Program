byecount = 0
while true
input = gets.chomp
input_upcase = input.upcase
year = rand(1930..1951)

if input == 'BYE'
	byecount = byecount.to_i + 1
	if byecount == 3
    puts 'GOODBYE!!!'
    break
	end
	if byecount != 3
		puts 'WHAT?'
	end
end
if input != input_upcase && input != 'BYE'
	byecount = 0
	puts 'HUH?!  SPEAK UP!'

elsif input == input_upcase && input != 'BYE'
	byecount = 0
	puts 'No, Not Since ' + year.to_s + '!'
end
end

