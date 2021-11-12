=begin 

Secret Function 4.0
Ex: 
secret("p.one.two.three") ➞ "<p class='one two three'></p>"

=end


class Seret 
	def theSeret(str)
		a = str.split('.')
		t = a.shift
		c = a.join(' ')
		puts "<#{t} class='#{c}'></#{t}>"

	end
end

s1 = Seret.new
#puts " Enter string : "
#a1 = gets.to_s
s1.theSeret "p.one.two.three"


=begin
	
	Output: -
	<p class='one two three'></p>
	
=end