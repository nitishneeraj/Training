=begin
	
Who's The Oldest?
Ex: 
oldest({
  "Emma" => 71,
  "Jack" => 45,
  "Amy" => 15,
  "Ben" => 29
}) ➞ "Emma"
	
=end

class Olderst
	def theold(h)
		puts "#{name} and #{age}"
		
	end
end

theOldest = Olderst.new
h = {rohan:22,Sita: 20,karan:17,Aman:23}
theOldest.theold h