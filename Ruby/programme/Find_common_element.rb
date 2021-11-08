=begin

Finding Common Elements

=end

def Common (arr1,arr2)
 	res =  arr1 & arr2
 	puts res
end


arr1 = Array.new
arr2 = Array.new

Common [1, 3, 4, 6, 7, 9], [1, 2, 3, 4, 7, 10]



=begin
Output: 1
		3
		4
		7	
=end




