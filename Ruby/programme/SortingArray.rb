=begin
	

Sorting array
	
=end





def array()
	a = Array(0..9)
	puts "#{a}"

	for a1  in a # not solve 

			for a2 in a 
			if(a[a1]>a[a2+1])
				temp = a[a1]
				a[a1]=a[a2+1]
				a[a2+1]=temp
			end
		end
		for a1 in a
			puts a1
		end
	end
end



