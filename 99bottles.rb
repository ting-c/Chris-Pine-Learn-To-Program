#!/usr/bin/ruby

def english_number number
	
	if number.to_i < 0 # No negative numbers.
		return 'Please enter a number that isn\'t negative.' 
	end

	if number.to_i == 0 
		return 'zero'
	end
	
num_string = '' # This is the string we will return.

ones_place = ['one', 'two', 'three', 
			'four', 'five', 'six', 
			'seven', 'eight', 'nine'] 

tens_place = ['ten', 'twenty', 'thirty', 
			'forty', 'fifty', 'sixty', 
			'seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen',
				'fourteen', 'fifteen', 'sixteen',
				'seventeen', 'eighteen', 'nineteen']

zillions = [['hundred',		2],
			['thousand',	3],
			['million',		6],
			['billion',		9],
			['trillion' , 	12],
			['quadrillion', 15],
			['quintillion', 18],
			['sextillion' , 21],
			['septillion' , 24],
			['octillion', 	27],
			['nonillion', 	30],
			['decillion', 	33],
			['undecillion', 36],
			['duodecillion', 39],
			['tredecillion',	42],
			['quattuordecillion', 45],
 			['quindecillion', 	48],
 			['sexdecillion', 	51],
 			['septendecillion',	54],
 			['octodecillion',	57],
 			['novemdecillion',	60],
 			['vigintillion',	63],
 			['googol',			100]]

# 
# "left" is how much of the number we still have left to write out.
#  "write" is the part we are writing out right now.

left = number

while zillions.length > 0
# to run through the whole list of zillions to make sure there's
# no more zillions left
  zil_pair = zillions.pop
  zil_name = zil_pair[0]
  zil_base = 10**zil_pair[1]

  write = left.to_i/zil_base.to_i		# How many zillions? 
  left = left.to_i - write*zil_base # Subtract off those zillions 
  #to get remainder.

	if write > 0
	# Now here's the recursion: # english_number is in def 
	# write is zillions. 
	prefix = english_number write
	# e.g write is 2 then english_number (2) will give 'two'
	
	num_string = num_string + prefix.to_s + ' ' + zil_name
	# num_string is the string we will return.
	
		if left > 0
		# So we don't write 'two billionfifty-one'... 
		num_string = num_string + ' '
         
   		end 
	end
end
# The next part of code is for less then 100.

write = left/10		# How many tens left?

left = left.to_i - write*10 	# Subtract off those tens.

if write > 0 
	if ((write == 1) and (left > 0 ))
	# Since we can't write "tenty-two" instead of 
	# "twelve", we have to make a special exception for these.
	num_string = num_string + teenagers[left-1]
# The "-1" is because teenagers[3] is
# 'fourteen', not 'thirteen'.

# Since we took care of the digit in the
# ones place already, we have nothing left to write. 
	left = 0
	else
num_string = num_string + tens_place[write-1]
# The "-1" is because tens_place[3] is forty not thirty.
	end

	if left > 0
	# So we don't write 'sixtyfour'... 
	num_string = num_string + '-'
	end 
end

write = left # How many ones left to write out? 
left = 0 # Subtract off those ones. 

if write > 0
num_string = num_string + ones_place[write-1] 
# The "-1" is because ones_place[3] is
# 'four', not 'three'.
end

# Now we just return "num_string"...
num_string

end


number_start = 4

number_current = number_start

while number_current > 1
	puts english_number(number_current).capitalize + ' bottles of beer on the wall, ' + english_number(number_current) + ' bottles of beer!'
	number_current = number_current - 1
	puts 'Take one down, pass it around, ' +
	english_number(number_current) + ' bottles of beer on the wall!'
end


puts "One bottle of beer on the wall, one bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
	






