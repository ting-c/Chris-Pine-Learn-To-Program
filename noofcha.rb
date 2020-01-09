puts 'What\'s your first name ?'
name1 = gets.chomp
puts 'What\'s your middle name ?'
name2 = gets.chomp
puts 'What\'s your last name ?'
name3 = gets.chomp
namefull = name1 + name2 + name3
puts 'There are ' + namefull.length.to_s + ' characters in your full name.'
puts 'Goodbye'