line_width = 30
number = 0
chapters = ['1', '2', '3']
topics = ['Getting Started', 'Numbers', 'Letters']
page_numbers = ['1', '9', '13']
puts 'Table of contents'.center(line_width)
while number.to_i <= 3
puts 'Chapters ' + chapters[number] + ':'.ljust(5) + topics[number].ljust(line_width) + ('page ' + page_numbers [number]).ljust(line_width)
number = number.to_i + 1
if number == 3
	break
end
end