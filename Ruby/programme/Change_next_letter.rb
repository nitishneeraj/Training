=begin 

=end

class Letter
	def theLetter(str)
		w = ("a".."z").to_a
		thestring = ""
		str.each_char do |c|
			nextLetter = w[w.index(c) + 1]
			thestring = thestring + nextLetter
		end
		puts " your next letter String = #{thestring}"
	end
	def letter(sr1)
			word1 = sr1.tr("a-y", "b-z")
			puts word1
	end
end

s1 = Letter.new
print " Enter String = "
#a1 = gets.to_s
s1.letter "Hello"



=begin
	
Output:
 Enter String = Hfmmp
	
=end