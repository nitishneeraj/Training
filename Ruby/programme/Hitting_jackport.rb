=begin
	
Hitting the Jackpot
Ex:
test_jackpot(["@", "@", "@", "@"]) ➞ true

test_jackpot(["abc", "abc", "abc", "abc"]) ➞ true

test_jackpot(["SS", "SS", "SS", "SS"]) ➞ true
	
=end

class Jackpot
	def thejack(result)
  		output = result.uniq.length == 1
  		puts "You win the Jackpot : #{output}"
  	end  
end

j1 = Jackpot.new
j1.thejack [["abc", "abc", "abc", "abc"]]

=begin 

Output :
You win the Jackpot : true

=end