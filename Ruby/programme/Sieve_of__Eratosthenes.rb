=begin

Sieve of Eratosthenes
Ex:
eratosthenes(1) ➞ []

eratosthenes(10) ➞ [2, 3, 5, 7]

eratosthenes(20) ➞ [2, 3, 5, 7, 11, 13, 17, 19]
	
=end

class Sieve
	def theSieve(num)
		a = Array.new(num)
		for i in 0..a.length-1
			a[i] = true
		end
		for j in 2..Math.sqrt(num)
			if(a[j] == true)
				for k in j*j..num
					a[k] = false
					k = j+k
				end
			end
		end
		puts " List of prime numbers upto given number are :"
		for l in 2..a.length
			if(a[l] == true)
				puts l
			end
		end
	end
end

s1 = Sieve.new
puts "Sieve of Eratosthenes"
print "Enter a Number = "
a1 = gets.to_i
s1.theSieve a1