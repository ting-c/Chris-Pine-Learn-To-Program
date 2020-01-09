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
m_letter = ''
	while true
		if integer.to_i < 1000
			integer = integer.to_i
		break

		else
		integer = integer.to_i - 1000
		m_letter = m_letter.to_s + 'M'
		end
	end
end

if integer.to_i >=900
	cm_letter = 'CM'
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
		d_letter = d_letter.to_s + 'D'
		end
	end
end

if integer.to_i >=400
	cd_letter = 'CD'
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
		c_letter = c_letter.to_s + 'C'
		end
	end
end

if integer.to_i >=90
	xc_letter = 'XC'
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
		l_letter = l_letter.to_s + 'L'
		end
	end
end

if integer.to_i >=40
	xl_letter = 'XL'
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
		x_letter = x_letter.to_s + 'X'
		end
	end
end

if integer.to_i >=9
	ix_letter = 'IX'
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
		v_letter = v_letter.to_s + 'V'
		end
	end
end

if integer.to_i >=4
	iv_letter = 'IV'
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
		i_letter = i_letter.to_s + 'I'
		end
	end
end
if integer.to_s == 'EXIT'
	break
end
puts m_letter.to_s + cm_letter.to_s + d_letter.to_s + cd_letter.to_s + c_letter.to_s + xc_letter.to_s + l_letter.to_s + xl_letter.to_s + x_letter.to_s + ix_letter.to_s + v_letter.to_s + iv_letter.to_s + i_letter.to_s 
m_letter = ""
cm_letter = ""
d_letter = ""
cd_letter = ""
c_letter = ""
xc_letter = ""
l_letter = ""
xl_letter = ""
x_letter = ""
ix_letter = ""
v_letter = ""
iv_letter = ""
i_letter = ""
integer = ''
end