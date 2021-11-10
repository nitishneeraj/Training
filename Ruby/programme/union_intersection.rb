=begin

Union and Intersection of Arrays

Array 1: [5, 6, 6, 6, 8, 9]
Array 2: [3, 3, 4, 4, 5, 5, 8]

Intersection: [5, 8]
# 5 and 8 are the only 2 numbers that exist in both arrays.

Union: [3, 4, 5, 6, 8, 9]
# Each number exists in at least one array.
	
=end


class Union
	def theUnion(num,num1)
		arr = []
		arr1 = []
		puts "Enter first array element"
		for i in 1..num
			scan2 = gets.to_i
			arr.push(scan2)
		end
		
		puts "Enter Second array element"
		for j in 1..num1
			scan1 = gets.to_i
			arr1.push(scan1)
		end
		puts "Array A : #{arr} "
		puts "Array B : #{arr1}"

		intersection = arr & arr1
		union = arr + arr1
		union = union.uniq
		inter = intersection.sort
		un = union.sort
		puts "yours intersection is : #{inter}"
		puts "your union is : #{un}"
	end
	def intersection()
		
	end
end

u1 = Union.new
print " Enter First array length : "
a1 = gets.to_i
print " Enter Second array length : "
b1 = gets.to_i
u1.theUnion a1,b1


=begin

Output : 

 Enter First array length : 3
 Enter Second array length : 5
Enter first array element
1
2
3
Enter Second array element
2
3
4
5
6
Array A : [1, 2, 3] 
Array B : [2, 3, 4, 5, 6]
yours intersection is : [2, 3]
your union is : [1, 2, 3, 4, 5, 6]

=end