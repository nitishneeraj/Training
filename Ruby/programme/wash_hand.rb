=begin
	
Wash Your Hands :)

It takes 21 seconds to wash your hands and help prevent the spread of COVID-19.

wash_hands(8, 7) ➞ "588 minutes and 0 seconds"

Consider a month has 30 days.
	
=end


class Covid
	# where n is the day
	# nm is the number of months
	def hand(n,nm)
		time = n * nm * 30  # total time  
		mint = time * 21 / 60 # find mint
		sec = time * 21 % 60  # find sec
		puts "#{mint} minutes and #{sec} Seconds"
	end
end

c1 = Covid.new
puts " Enter number of days : "
n = gets.to_i
puts " Enter number of months : "
nm = gets.to_i

c1.hand n,nm


=begin
	

	
=end
