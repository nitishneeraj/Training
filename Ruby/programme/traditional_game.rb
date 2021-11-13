=begin
	
Loves Me, Loves Me Not...
Ex:
loves_me(3) ➞ "Loves me, Loves me not, LOVES ME"

loves_me(6) ➞ "Loves me, Loves me not, Loves me, Loves me not, Loves me, LOVES ME NOT"

loves_me(1) ➞ "LOVES ME"
	
=end

class Game
	def theGame(num)
		thePositive = "Loves me "
		theNegitive = "Loves me not"

		theString = ""
		start = 1

		while(start <= num)
			if(start == num) && (start.even? == false)
				theString = theString + thePositive 
				start = start + 1
			elsif(start == num) && (start.even? == true)
				theString = theString + theNegitive 
				start = start + 1
			elsif(start < num) && (start.even? == false)
				theString = theString + thePositive + " , "
				start = start + 1
			elsif(start < num) && (start.even? == true)
				theString = theString + theNegitive + " , "
				start = start + 1
			else
				start = start + 1
			end
		end
		puts "Your Pattern :->  #{theString}"

	end
end

g1 = Game.new
print " Enter any number : "
p1 = gets.to_i
g1.theGame p1

=begin
	
Output : 
 Enter any number : 6
Your Pattern :->  Loves me  , Loves me not , Loves me  , Loves me not , Loves me  , Loves me not
	
=end