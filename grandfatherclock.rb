def clock some_proc
    
hours = Time.new.hour
if hours == 0
    hours = hours + 12
elsif hours > 12
    hours= hours - 12
end 

hours.to_i.times do
some_proc.call
end
end

dong = Proc.new do
puts 'DONG!' 
end


clock dong
