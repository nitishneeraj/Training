=begin
	
Scoring System

calculate_scores("A") ➞ [1, 0, 0]

calculate_scores("ABC") ➞ [1, 1, 1]	

=end

class Scoring
	def string(str)
		a=str.count('A')
		b=str.count('B')
		c=str.count('C')
		puts "A: = #{a},B: #{b},C: #{c}"
	end
end

s1=Scoring.new
s1.string "AABBBC"


=begin

Output : A: = 2,B: 3,C: 1


=end