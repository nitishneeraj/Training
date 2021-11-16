


class Sort
=begin
	def theArr(arr)
		for i in 0..arr.length
			for j in 0..arr.length
				if(arr[i] > arr[j+1])
					temp = arr[i]
					arr[i] = arr[j+1]
					arr[j+1] = temp
				end
			end
			puts arr[i]
		end
	end

	
	def thearr(arr)
		arr.each do |c|
			arr.each do |d|
				if(arr[c] > arr[d+1])
					temp = arr[c]
					arr[c] = arr[d+1]
					arr[d+1] = temp
				end
			end
			puts c
		end
	end


	def my_sort(list)
  		return list if list.size <= 1 

		  swapped = false
		  while !swapped
		    swapped = false
		    0.upto(list.size-2) do |i|
		      if list[i] > list[i+1]
		        list[i], list[i+1] = list[i+1], list[i]
		        swapped = true
		      end
		    end
		  end	
  		puts list
	end

=end
	
	def arr(a)
		a.size.times.each do |t|
	 		i=0
	 		a.each do |b|
				if b > a[i+1]
	     			a[i],a[i+1] = a[i+1],a[i]
	   			end
	   				i = i + 1 if i < a.size-2
	 		end
		end
		puts a
	end
end

s1 = Sort.new
s1.arr [2,1,4,6,3,7,5,-2]