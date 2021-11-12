=begin 

Return First and Last Parameter
Ex: 
first_arg(1, 2, 3) ➞ 1

last_arg(1, 2, 3) ➞ 3

first_arg(8) ➞ 8

=end

class First
	def thefirst(*num) # args will hold Array of all arguments
		thefirst = num[0]
		puts "the first values : = #{thefirst}"
	end

	def thelast(*num1)
		thelast = num1[-1]
		puts "the last values : = #{thelast}"
	end
end

f1 = First.new
#print "Enter number :"
#s1 = gets.to_i
f1.thelast 1,2,3,4,5
f1.thefirst 4,6,8,9,0

=begin
	
Output :

the last values : = 5
the first values : = 4
	
=end