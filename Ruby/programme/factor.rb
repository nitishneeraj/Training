

=begin
	
Factors of a Positive Integer
	
=end

class Factor
	def thefact(num)
		print "Factors of #{num} are:  "
		for i in 1..num	
		if (num % i == 0)
			print  " #{i} "
			end	
		end
	end
end

thefact= Factor.new
puts " Factors  "
print " Enter any number : "
num=gets.to_i
thefact.thefact num


=begin


Output: Factors  
Enter any number : 55
Factors of 55 are:   1  5  11  55
	
=end