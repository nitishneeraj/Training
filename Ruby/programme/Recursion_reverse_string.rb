=begin
	
Recursion: Reverse a String
Ex:
reverse("hello") ➞ "olleh"

reverse("world") ➞ "dlrow"
	
=end

class Reverse
	def theReverse(str)
		if(str == 0) ||(str == 1)
			return str
		else
			last = str[-1]
			left = str[0..str.length-2]
			return  last.reverse + left.reverse
		end	
	end
end

r1 = Reverse.new
print "Enter String : "
a1 = gets.to_s
reverse_value = r1.theReverse a1
print "Your reverse value = #{reverse_value}" 


=begin
	
Output: 
Enter String : String
Your reverse value = 
gnirtS
	
=end