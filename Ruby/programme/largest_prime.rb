=begin
	
Find the Largest Prime within a Range
Ex: 
fat_prime(2, 10) ➞ 7
# range [2, 3, 4, 5, 6, 7, 8, 9, 10] and the largest prime is 7.

fat_prime(10, 2) ➞ 7
# [10, 9, 8, 7, 6, 5, 4, 3, 2] and the largest prime is 7.
	
=end
class Prime
	def theprime(num,num1)
		if(num > num1) # swap two number using third variable 
			temp = num
			num = num1
			num1 = temp
		end
		(num..num1).reverse_each do |i|
			if is_prime(i)
				puts i
			end
		end	
		puts -(1/0.0)
	end

	def is_prime(n)
		count = 0
		for i in 1..n
			if(n % i == 0)
				count = count + 1
			end
		end
		return count == 2
	end
end


p1 = Prime.new
print "Enter number to first range : "
a1= gets.to_i
print  "Enter number to Second range : "
b1= gets.to_i
p1.theprime a1,b1


=begin
	
Enter number to first range : 3
Enter number to Second range : 66
61
59
53
47
43
41
37
31
29
23
19
17
13
11
7
5
3
-Infinity

	
=end