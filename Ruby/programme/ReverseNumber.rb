

=begin
	
reverse number 
	
=end



def reverse(a)
	rev =0
	while(a != 0)
		b=a%10;
		rev =rev*10+b
		a=a/10;
	end 
	puts rev


end


puts " Enter any number"
a=gets.to_i

reverse a



=begin 

Ex: Enter any number 
	12345

	54321

=end