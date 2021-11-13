=begin 
	
	a=10
	 sum of all divide 2
	 and
	 sum od all divide 3
	 Ex: -> 2+4+6+8+10+3+9 = 42
=end

class Sum
	def theSum(num)
		sum = 0
		for i in 1..num
			if(i % 2 == 0) || (i % 3 == 0)
				sum = sum + i
			end
		end
		puts "Sum of all numbers divide by 3 and 2 = #{sum}"
	end
end

s1 = Sum.new
print "Entert number : "
a1 = gets.to_i
s1.theSum a1


=begin
	
Output:
Entert number : 10
Sum of all numbers divide by 3 and 2 = 42
	
=end