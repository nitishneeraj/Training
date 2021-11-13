=begin

Sieve of Eratosthenes
Ex:
eratosthenes(1) ➞ []

eratosthenes(10) ➞ [2, 3, 5, 7]

eratosthenes(20) ➞ [2, 3, 5, 7, 11, 13, 17, 19]
	
=end

class Sieve
	require 'prime'
	def theSieve(num)
		arr = []
		start = 2
		while(start < num)
			if(start.prime?)
				arr.push(start)
				start = start +1
			else
				start = start +1
			end
		end
		puts " List of prime numbers upto given number are : #{arr}"
	end
end

s1 = Sieve.new
print "Sieve of Eratosthenes"
print "Enter a Number = "
a1 = gets.to_i
s1.theSieve a1


=begin

Output :
	Sieve of EratosthenesEnter a Number = 50
 List of prime numbers upto given number are : [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]
	

=end
	
