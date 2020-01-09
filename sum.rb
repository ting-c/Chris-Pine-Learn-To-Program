while true
puts 'Enter an integer'
num = gets.chomp
no = num
if num == 'close'
break
end
def sum_upto num
	if num.to_i <= 1
		1
	else
		num.to_i + sum_upto(num.to_i - 1)
		
	end
end

def show no
	string = no
	while no.to_i > 1
	no = no.to_i - 1
	string = string.to_s + ' + ' + no.to_s
	end
	puts string
end

series = show no.to_s
sum = sum_upto num.to_s
puts series.to_s + ' = ' + sum.to_s
end