=begin 

ATM PIN Code Validation
Ex:

is_valid_PIN("1234") ➞ true

is_valid_PIN("12345") ➞ false

=end

class ATM
	def pin(num,num2)
		if(num == "")
			puts " your ATM pin registration false"
		elsif (num == num2)
			puts " yours atm pin registration successfully"
		else
			puts " your ATM pin registration false"
		end
	end
end

a1 = ATM.new
puts "Enter four digit ATM PIN"
b1 = gets.to_i
puts "Again re-enter four digit ATM PIN"
b2 = gets.to_i
a1.pin b1,b2



=begin
Output :

Enter four digit ATM PIN
1234
Again re-enter four digit ATM PIN
1234
 yours atm pin registration successfully

Output:

Enter four digit ATM PIN
123
Again re-enter four digit ATM PIN
1234
 registration false
	
=end