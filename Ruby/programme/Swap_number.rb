=begin
	
Swap the Numbers

	
=end




class Swap_number

	def swap(n1,n2)

		n1=n1+n2
		n2=n1-n2
		n1=n1-n2
		puts "After swap number A: #{n1}"
		puts "After swap number B: #{n2}"
		
	end
end


theswap = Swap_number.new
print " Enter value A: "
n1= gets.to_i
print  " Enter value B: "
n2= gets.to_i





=begin
	
 Output :   Enter value A: 6
			Enter value B: 7
			After swap number A: 7
			After swap number B: 6

	
=end