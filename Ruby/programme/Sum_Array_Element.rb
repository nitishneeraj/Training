
=begin
	
Sum of Number Elements in an Array

numbers_sum([1, 2, 3, 4, 5, true]) ➞ 15
	
=end


class Array
	def number(no)
		sum = 0
		arr = [] 
		for i in 0..no
			a = gets.to_i
			sum = sum + a
			arr.push(a)

		end
		print "#{arr} sum value : #{sum}"
	end
	
end




thereserve = Array.new
print "Enter no of input array  : "
thenumber = gets.to_i
thereserve.number thenumber