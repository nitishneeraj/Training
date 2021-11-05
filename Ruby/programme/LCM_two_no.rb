=begin
	
LCM of Two Numbers(least common multiple)

lcm(9, 18) ➞ 18

lcm(8, 5) ➞ 40

lcm(17, 11) ➞ 187
	
=end

class LCM
	def gcd(a, b)
    while b != 0
       t = b;
       b = a % b;
       a = t;
    end
    return a;
end

def lcm(a, b)
	return a * b / gcd(a, b)
end
end


l1= LCM.new
puts "  LCM of Two Numbers"
print " Enter the first : "
a=gets.to_i
print " Enter the second : "
b=gets.to_i
puts "LCM of #{a} and  #{b} is #{l1.gcd(a, b)} " 
puts "HCF of #{a} and  #{b} is #{l1.lcm(a, b)} " 



=begin

 LCM of Two Numbers
 Enter the first : 3
 Enter the second : 5
LCM of 3 and  5 is 1 
HCF of 3 and  5 is 15 
	
=end