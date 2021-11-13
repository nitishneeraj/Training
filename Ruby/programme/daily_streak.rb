=begin
	
Longest Daily Streak
Ex:
daily_streak([true, true, false, true]) ➞ 2

daily_streak([false, false, false]) ➞ 0
	
=end

class Daily_streak
	def theDaily(arr)
		count = 0
		long = 0
		arr.each do |d|
			if(d == 1)
				count = count + 1
				if(long <= count)
					long = count
				end
			else
				count = 0
			end
		end
		puts " The Result of daily_streak in Game = #{long}"
	end
end

d1 = Daily_streak.new
d1.theDaily [1,1,1,1,0,1,1,1,1,]


=begin
	
Output:
 The Result of daily_streak in Game = 4
	
=end