 # arr = array
# rec_sort is a def


def sort arr 
	rec_sort arr, []
end

# rec_sort has two arrays (unsorted, sorted)
def rec_sort unsorted, sorted 
	if unsorted.length <= 0

# sorted is an array
	return sorted 
	end

# So if we got here, then it means we still have work to do.
# take last one out of unsorted, call it smallest
smallest = unsorted.pop
#create en empty 'still unsorted' array 
still_unsorted = []

#testing if each object in unsorted is smaller than 'smallest' 
	unsorted.each do |tested_object| 
	#if tested object is smaller than smallest then push them in still unsorted
		if tested_object.downcase < smallest.downcase
			still_unsorted.push smallest
			smallest = tested_object
		else
			still_unsorted.push tested_object
		end 
	end
# Now "smallest" really does point to the
# smallest element that "unsorted" contained,
# and all the rest of it is in "still_unsorted". 
sorted.push smallest

rec_sort still_unsorted, sorted
end

puts(sort(['can' ,'feel' ,'singing' ,'like' ,'a' ,'Can' ,'A' , 'Frank']))
