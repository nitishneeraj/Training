=begin
	
Is the Phone Number Formatted Correctly?
Ex: 
is_valid_phone_number("(123) 456-7890") ➞ true

is_valid_phone_number("1111)555 2345") ➞ false
	
=end

class Phone_no
	def theNumber(num)
		count = 0
		while (num != 0)
			num = num /10
			count = count +1
		end

		if(count == 10 ) 
			puts " Your phone number is valid Formatted"
		elsif (count >= 10)
			puts " Enter valid phone number Formatted "
		else
		puts "not valid format"
		
		end
	end
end

p1 = Phone_no.new
print " Enter valid phone number : "
a1 = gets.to_i
p1.theNumber a1