# Prime number 
class PrimeExample

	def prime(a)
		num=2

		while (num<a)
			if (a%2==0)
				puts " Not prime number"
				num =num+1
				break
			else
				puts " prime number"
				break
			end
		end
		
	end
end


	
a1=PrimeExample.new
puts " Enter any number "
a=gets.chomp.to_i
a1.prime a