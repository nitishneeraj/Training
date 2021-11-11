=begin
	
Invert Keys and Values
Write a function that inverts the keys and values of a hash.
Ex:
invert({ "z" => "q", "w" => "f" })
➞ { "q" => "z", "f" => "w" }
	
=end

class Invert
	def theinvert(hash)
		thehash = hash.invert
		puts thehash
		
	end
end

t1 = Invert.new

h = {Rohit:1,Sager:2,Mohan:3,Rohan:4}

t1.theinvert h


=begin
	
{1=>:Rohit, 2=>:Sager, 3=>:Mohan, 4=>:Rohan}
	
=end