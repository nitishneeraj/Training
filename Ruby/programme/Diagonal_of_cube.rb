=begin
	
Diagonal of a Cube
Ex:
cube_diagonal(8) ➞ 3.46

cube_diagonal(343) ➞ 12.12
	
=end

class Diagonal
	def theDiagonal(num)
		s = Math.cbrt(num)
		output = Math.sqrt(3) * s
		ans = output.round(2)
		puts " Your result = #{ans}"
	end
end

d1 = Diagonal.new
print " Enter a number = "
a1 = gets.to_i
d1.theDiagonal a1

=begin
	
Output :
 Enter a number = 19
 Your result = 4.62
	
=end