=begin
	
Ex:
sum_neg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]) ➞ [10, -65]
// There are a total of 10 positive numbers.
// The sum of all negative numbers equals -65.
	
=end

class Positive
	def thepositive(num)
		arr = []
		count = 0
		sum = 0
		puts "Enter Positive and Negitive numbers "
		for i in 1..num
			a1 = gets.to_i
			arr.push(a1)
		end
		arr.each do |item|
		  if(item > 0)
		  	count = count + 1
		  else
		  	sum = sum + item 
		  end
		end
		puts "Count of all Positive Number : #{count}"
		puts "sum of all Negitive number : #{sum}"
	end
end

obj = Positive.new
print "Enter a length of array : "
num = gets.to_i
obj.thepositive num

=begin

Output :	
Enter a length of array : 5
Enter Positive and Negitive numbers 
4
5
3
-3
-5
Count of all Positive Number : 3
sum of all Negitive number -8

	
=end