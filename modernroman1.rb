# 'I' = 1   'V' = 5	 'X' = 10	
# 'L' = 50	'C' = 100	  'D' = 500    'M' = 1000
puts 'MODERN ROMAN NUMERALS'.center(40)
puts
puts 'Enter an integer between 0 to 3999   '  +  '[EXIT to close program]'

while true

while true 
integer = gets.chomp.upcase
decimal = integer.to_f - integer.to_i

	if integer.to_s == 'EXIT'
	break
	end

	if decimal.to_f > 0 || integer.to_i <1 || integer.to_i >3999
		puts 'Please enter an integer between 0 to 3999   '  +  '[EXIT to close program]'

	else
		break

	end
end


if integer.to_i >= 1000
numeral = ''
	while true
		if integer.to_i < 1000
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 1000
		numeral = numeral.to_s + 'M'
		end
	end
end

if integer.to_i >=900
	numeral = numeral.to_s + 'CM'
	integer = integer.to_i - 900
end



if integer.to_i >=500 
d_letter = ''
	while true
		if integer.to_i < 500
			integer = integer.to_i
		break
		
		else
		integer = integer.to_i - 500
		numeral = numeral.to_s + 'D'
		end
	end
end

if integer.to_i >=400
	numeral = numeral.to_s + 'CD'
	integer = integer.to_i - 400
end

if integer.to_i >=100
c_letter = ''
	while true
		if integer.to_i < 100
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 100
		numeral = numeral.to_s + 'C'
		end
	end
end

if integer.to_i >=90
	numeral = numeral.to_s + 'XC'
	integer = integer.to_i - 90
end

if integer.to_i >=50
l_letter = ''
	while true
		if integer.to_i < 50
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 50
		numeral = numeral.to_s + 'L'
		end
	end
end

if integer.to_i >=40
	numeral = numeral.to_s + 'XL'
	integer = integer.to_i - 40
end

if integer.to_i >=10
x_letter = ''
	while true
		if integer.to_i < 10
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 10
		numeral = numeral.to_s + 'X'
		end
	end
end

if integer.to_i >=9
	numeral = numeral.to_s + 'IX'
	integer = integer.to_i - 9
end

if integer.to_i >=5
v_letter = ''
	while true
		if integer.to_i < 5
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 5
		numeral = numeral.to_s + 'V'
		end
	end
end

if integer.to_i >=4
	numeral = numeral.to_s + 'IV'
	integer = integer.to_i - 4
end

if integer.to_i >=1
i_letter = ''
	while true
		if integer.to_i < 1
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 1
		numeral = numeral.to_s + 'I'
		end
	end
end
if integer.to_s == 'EXIT'
	break
end
puts numeral
numeral = ''
integer = ''
end