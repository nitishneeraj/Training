
=begin
	
Create a function which returns how many Friday 13ths there are in a given year.

how_unlucky(2020) ➞ 2

how_unlucky(2026) ➞ 3
	
=end

class Unlucky
	require 'date'
	def theyear(year)
		count = 0
		month = 1

		while (month <= 12)
			t = Date.new(year,month,13)
			#("%A") = The full weekday name (e.g. Sunday)
			weekday = t.strftime("%A") # Gives week day in full form of the time
			if(weekday == "Friday")
				count = count + 1
				month = month + 1
			else
				month = month +1
			end
		end
		puts "Friday 13ths there are in a given year : #{count}"
	end
end

y1 = Unlucky.new
print " Enter any Year "
a1 = gets.to_i
y1.theyear a1


=begin
	
Output : 

 Enter any Year 2026
Friday 13ths there are in a given year : 3
	
=end