=begin
	
Write a function that returns the length of a string. Make your function recursive.

length("apple") ➞ 5

length("make") ➞ 4

length("a") ➞ 1
	
=end

class Recursion
	def thelength(str)
		st = str.length 	
	 	puts st
	end

	def length(str)
		if(str.emply?) # check string is empty 
			leng = 0
		else
			thestr = str.chop # remove last character
			thelength = 1 + length(thestr) # method call itself
		end
		puts "your langth of string : #{thelength}"
	end
end

r1 = Recursion.new
print " Enter string : "
a1 = gets.to_s
r1.length a1

