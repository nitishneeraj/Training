=begin

Censor Words Longer Than Four Characters

Create a function that takes a string and censors words over four characters with *.

censor("The code is fourty") ➞ "The code is ******"

=end

class Censor
	def theCensor(str,a1,b1)
		word = str.split	
		
		word.each do |w| # do loop condition
			if(w.length > a1) # where a1 is the user input length
				w.each_char do |i|
					w[i] = "#{b1}" # where b1 is the user input characters

				end
			end
		end
		print word.join(" ")
	end
end

c1 = Censor.new
puts " Create a function that takes a string and censors words over four characters with *."
puts "Enter String : "
str = gets.to_s
puts " Enter number of length : "
a1 =gets.to_i
print " Which type of characters print : "
b1 =gets.to_s
c1.theCensor str,a1,b1


=begin

output : 

Create a function that takes a string and censors words over four characters with *.
Enter String : 
this is 
 Enter number of length :
3
 Which type of characters print :4
4
4
4
4
 is

	
=end