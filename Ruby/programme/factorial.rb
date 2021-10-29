=begin
	
	your input factorial

=end


def fact(a)
	fact = 1
	for a1 in 1..a do
		fact = fact *a1
	end
	puts fact
	
end

puts "Enter any number"
a=gets.chomp.to_i
fact a



=begin
	
 Ex: Enter any number 
 4
 24  
	
=end