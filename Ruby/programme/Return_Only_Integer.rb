=begin
	
Return Only the Integer
Ex: return_only_integer([9, 2, "space", "car", "lion", 16]) ➞ [9, 2, 16]
	
=end


class IntegerValue
	def theint(num)
		arr = []
		for  i in 1..num
			x=gets.chomp.to_i
			arr.push(x)
			
		end
		#print " #{arr} "
		values = arr.grep(Integer)
		puts " #{values}"
	end
end

theInteger =IntegerValue.new
print " Enter Interger & String values :"
a1=gets.to_i
theInteger.theint a1