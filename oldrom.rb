# 'I' = 1   'V' = 5	 'X' = 10	
# 'L' = 50	'C' = 100	  'D' = 500    'M' = 1000
puts 'OLD SCHOOL ROMAN NUMERALS'.center(40)
puts
puts 'Enter an integer above 0'

while true 
integer = gets.chomp 	
	if integer.to_i <1

		puts 'Please enter an integer above 0'

	else
		break

	end
end

if integer.to_i >= 1000
m_count = 0
m_letter = ''
	while true
		if integer.to_i < 1000
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 1000
		m_letter = m_letter.to_s + 'M'
		m_count = m_count.to_i + 1
		end
	end
end

if integer.to_i >=500
d_count = 0
d_letter = ''
	while true
		if integer.to_i < 500
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 500
		d_letter = d_letter.to_s + 'D'
		d_count = d_count.to_i + 1
		end
	end
end

if integer.to_i >=100
c_count = 0
c_letter = ''
	while true
		if integer.to_i < 100
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 100
		c_letter = c_letter.to_s + 'C'
		c_count = c_count.to_i + 1
		end
	end
end

if integer.to_i >=50
l_count = 0
l_letter = ''
	while true
		if integer.to_i < 50
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 50
		l_letter = l_letter.to_s + 'L'
		l_count = l_count.to_i + 1
		end
	end
end

if integer.to_i >=10
x_count = 0
x_letter = ''
	while true
		if integer.to_i < 10
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 10
		x_letter = x_letter.to_s + 'X'
		x_count = x_count.to_i + 1
		end
	end
end

if integer.to_i >=5
v_count = 0
v_letter = ''
	while true
		if integer.to_i < 5
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 5
		v_letter = v_letter.to_s + 'V'
		v_count = v_count.to_i + 1
		end
	end
end

if integer.to_i >=1
i_count = 0
i_letter = ''
	while true
		if integer.to_i < 1
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 1
		i_letter = i_letter.to_s + 'I'
		i_count = i_count.to_i + 1
		end
	end
end

puts m_letter.to_s + d_letter.to_s + c_letter.to_s + l_letter.to_s + x_letter.to_s + v_letter.to_s + i_letter.to_s 


