=begin 

Capitalize the First Letter of Each Word
Ex: 
make_title("This is a title") ➞ "This Is A Title"

make_title("capitalize every word") ➞ "Capitalize Every Word"

=end

class Capital
	def theupercase(str)
		eachword = str.split(" ")
		cap = eachword.map do |w|
			w.slice(0,1).capitalize + w.slice(1..-1)
		end
		puts "Your value = #{cap.join(" ")}"
	end
end

c1 = Capital.new
print "Enter a String : "
s1 = gets.to_s
c1.theupercase s1


=begin 

Output :
Enter a String : this is my pen
Your value = This Is My Pen


=end