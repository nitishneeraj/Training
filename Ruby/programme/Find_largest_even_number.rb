=begin
	
Find the Largest Even Number
Ex: 
largest_even([3, 7, 2, 1, 7, 9, 10, 13]) ➞ 10

largest_even([1, 3, 5, 7]) ➞ -1
	
=end

class Array
	def theArray(arr)
		max = arr[0]
		for i in 1..arr.length-1
				if(arr[i] % 2 == 0)
					if(max < arr[i])
						max = arr[i]
					end
				end
			
		end
		puts "Largest even number : #{max}"
	end

	def array(thearr)
		arr= []
		for i in 0..thearr-1
			a = gets.to_i
			arr.push(a)
		end
		return theArray(arr)
	end
end

a1 = Array.new
print "Enter array size : "
p1 = gets.to_i
a1.array p1

=begin
	

	
=end