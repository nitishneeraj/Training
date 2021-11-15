=begin
	
Odd Up, Even Down — N Times
Problem :-> Create a function that performs an even-odd transform to an array, n times.
Adds two (+2) to each odd integer.
Subtracts two (-2) from each even integer.
Ex: 
even_odd_transform([3, 4, 9], 3) ➞ [9, -2, 15]
# Since [3, 4, 9] => [5, 2, 11] => [7, 0, 13] => [9, -2, 15]

even_odd_transform([0, 0, 0], 10) ➞ [-20, -20, -20]
	
=end

class Even_Odd
	def theEven(arr,n)
		puts "User array and n terms Before transform => #{arr},#{n}"
		#puts "#{arr},#{n}"
		a = 0
		while (a < n)
			count = 0
			l = arr.length
			while(count < l)
				item  = arr[count]
				if(item.even?)
					arr[count] = item - 2
					count = count + 1
				else
					arr[count] = item + 2
					count = count + 1
				end
			end
			a = a + 1
		end
		puts "After Tranform => #{arr}"
	end

	def input
		arr = []
		puts "Create a function that performs an even-odd transform to an array, n times."
		print "Enter numbers of array : "
		a = gets.to_i
		print "Enter a length of array : "
		num = gets.to_i
		puts "Enter a array numbers "
		for i in 0..num-1
			a1 = gets.to_i
			arr.push(a1)
		end
		return theEven(arr,a)
	end

end

theEven = Even_Odd.new
theEven.input


=begin

Output :
Create a function that performs an even-odd transform to an array, n times.
Enter numbers of array : 3
Enter a length of array : 3
Enter a array numbers 
1
2
3
User array and n terms Before transform [1, 2, 3],3
After Tranform => [7, -4, 9]
 
=end