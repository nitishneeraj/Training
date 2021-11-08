=begin
	
Array of Multiples
Ex: 
array_of_multiples(7, 5) ➞ [7, 14, 21, 28, 35]

array_of_multiples(12, 10) ➞ [12, 24, 36, 48, 60, 72, 84, 96, 108, 120]
	
=end

class Multiples

	def multi(a1,a2)
		arr =[]
		for i in 1..a2
			arr.push(i)
		end
		result=arr.map{|a| a1*a}
		puts "Result : #{result}"
	end
end


theMulti = Multiples.new
print " Enter no to multiple : "
a1=gets.to_i
print " Enter length : "
a2=gets.to_i

theMulti.multi a1 ,



=begin

=end

	
=end
