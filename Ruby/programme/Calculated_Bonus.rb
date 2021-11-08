=begin 

Days	Bonus
0 to 32 days	Zero
33 to 40 days	SGD$325 per billable day
41 to 48 days	SGD$550 per billable day
Greater than 48 days	SGD$600 per billable day

=end


class Bonus
	def theBonus(days)
		a=0
		bouns=0
		while(a<=days)
			if (a<=32)
				bouns+=0
				a = a + 1
			elsif(a >=32) && (a <= 40)
				bouns = bouns + 325
				a = a + 1
			elsif(a>=41 && a <= 48) 
				bouns = bouns + 550
				a = a + 1
			else
				bouns = bouns + 600
				a = a + 1
			end
		end
		puts "#{bouns}"
	end
end
	

b1 = Bonus.new
print " Entert days : "
days =gets.to_i
b1.theBonus days
