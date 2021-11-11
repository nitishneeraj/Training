=begin
	
The DECIMATOR
Write a DECIMATOR function which takes a string and decimates it
 (i.e. it removes the last 1/10 of the characters).

decimator("1234567890") ➞ "123456789"
# 10 characters, removed 1.

decimator("1234567890AB") ➞ "1234567890"
# 12 characters, removed 2.
	
=end

class Decimator
	def theInput(num)
		l = num.length # count length of string
		puts l
		remove = (l/10.to_f).ceil  # remove number 
		puts "remove = #{remove}"
		str = num.slice(0...(l-remove))
		puts str
		
	end
end

d1 = Decimator.new
puts " Enter decimator : "
a1 = gets.to_s
d1.theInput a1


=begin

output:
 Enter decimator : 
123456asd
10
"remove = 1"
"123456asd"
	
=end