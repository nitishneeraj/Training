
class Bitwise_Example

	def bitwise_and(n1, n2)
		puts "n1 & n2 = #{n1 & n2}"
	end

	def bitwise_or(n1, n2)
		puts "n1 | n2 = #{n1 | n2}"
	end

	def bitwise_xor(n1,n2)
		puts "n1 ^ n2 = #{n1 ^ n2}"
		
	end
end


b1=Bitwise_Example.new
b1.bitwise_and 9,8
b1.bitwise_or 9,8 
b1.bitwise_xor  9,8

=begin

Ex: ruby Bitwise_Operations.rb 
	n1 & n2 = 8
	n1 | n2 = 9		
	n1 ^ n2 = 1

	
=end
