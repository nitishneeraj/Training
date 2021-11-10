=begin
	

	
=end

class Longest
	def thelong(str)
		arr = str.split() #breaks a given string
		#puts arr
		min = 0
		long_word = "" 

		arr.each do |w|
			if(w.length > min)  #compair word 
				min = w.length
				long_word = w
			end  # end of if condition
		end  # end of do loop condition
		puts "Your string = #{str}"
		puts "Logest word : #{long_word}" # print largest word

	end
end

t1 = Longest.new
puts "Find largest word in your sting"
t1.thelong "this is my pen , welcome to digital world"
