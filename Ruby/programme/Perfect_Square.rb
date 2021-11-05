=begin
	
Program to Check if a Given Number is Perfect Square
49=7*7
100=10*10
625=25*25
	
=end


class Perfect
	def theperfect(num)
		#x = Math.sqrt(num)
		if((Math.sqrt(num) % 1).zero?)
			puts " #{num} is Perfect Square"
		else
			puts " #{num} is not Perfect Square"
		end
	end

end

t1 = Perfect.new
puts " Enter any Number :"
a1=gets.to_i

t1.theperfect a1


=begin
	
Output :  Enter any Number :
121
 121 is Perfect Square
	
=end