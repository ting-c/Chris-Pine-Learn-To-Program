# 'I' = 1   'V' = 5	 'X' = 10	
# 'L' = 50	'C' = 100	  'D' = 500    'M' = 1000

# Using Modulus and numbers for each place value.

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

thous = (integer.to_i/1000)
hunds = (integer.to_i % 1000 /100) # get the remainder from /1000 then /100
tens = (integer.to_i % 100 /10)
units = (integer.to_i % 10)

numeral = 'M' * thous.to_i

if hunds.to_i == 9

	numeral = numeral.to_s + 'CM'
elsif hunds.to_i == 4
	numeral = numeral.to_s + 'CD'

else numeral = numeral.to_s + 'D' * (integer.to_i % 1000/500) #if hunds = 5 
	numeral = numeral.to_s + 'C' * (integer.to_i % 500/100) #if hunds > 5 then %100 will give remainder , /100 to give number for hunds
end

if tens.to_i == 9

	numeral = numeral.to_s + 'XC'
elsif tens.to_i == 4
	numeral = numeral.to_s + 'XL'

else numeral = numeral.to_s + 'L' * (integer.to_i % 100/50) #if tens = 5 
	numeral = numeral.to_s + 'X' * (integer.to_i % 50/10) #if tens > 5 then %10 will give remainder , /10 to give number for tens
end

if units.to_i == 9

	numeral = numeral.to_s + 'IX'
elsif units.to_i == 4
	numeral = numeral.to_s + 'IV'

else numeral = numeral.to_s + 'V' * (integer.to_i % 10/5) 
	numeral = numeral.to_s + 'I' * (integer.to_i % 5/1) 
end

if integer.to_s == 'EXIT'
	break
end
puts numeral 


numeral = ''
integer = ''

end
