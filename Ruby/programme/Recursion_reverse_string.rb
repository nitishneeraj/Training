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
			return reverse(last) + reverse(left)
		end

	end
end

r1 = Reverse.new
print "Enter String : "
a1 = gets.to_s
r1.theReverse a1