=begin
	
The Nth Term of the Sequence
Ex: 
2, 6, 13, 23, 36, 52 ...and the sequence continues.

seq(1) ➞ 2

seq(2) ➞ 6

seq(6) ➞ 52
	
=end


class Seq
	def theSeq(arr)
		pattern = 19 # 4,7,10,13,16,19.....
		theSequence = [2, 6, 13, 23, 36, 52]
		l = theSequence.length # length count

		while(l <= arr)
			nextNumber = theSequence[-1] + pattern 
			theSequence.push(nextNumber) # add next number in sequence array
			pattern = pattern + 3  # update pattern number
			l = theSequence.length  # update  sequenece length
		end
		puts theSequence[arr] # print n term of sequence
		
	end
end

s1 = Seq.new
puts "The Nth Term of the Sequence"
print " Enter number : "
a1 = gets.to_i  # user input integer
s1.theSeq a1

=begin
	
The Nth Term of the Sequence
 Enter number : 8 
118
	
=end