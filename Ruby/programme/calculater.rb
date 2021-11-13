=begin
	
Operations
Ex:
operation("1", "2", "add" ) ➞ "3"

operation("4", "5", "subtract") ➞ "-1"

operation("6", "3", "divide") ➞ "2"
	
=end

class Cal
	def theCal(arr)
		
		print "Enter First number = "
		a1 = gets.to_i
		arr.push(a1)
		print "Enter Second number = "
		a2 = gets.to_i
		arr.push(a2)
		return arr
	end
	def input
		puts "1.Addtion"
		puts "2.Multiplication"
		puts "3.Subtract"
		puts "4.Divide"
		puts "5.Mode"
		print "Enter a number = "
		input = gets.to_i

		case input
		when 1
			arr = Array.new
			theCal(arr)
			c = arr[0]+arr[1]
			puts c
		when 2
			arr = Array.new
			theCal(arr)
			c = arr[0]*arr[1]
			puts c
		when 3
			arr = Array.new
			theCal(arr)
			c = arr[0]-arr[1]
			puts c
		when 4
			arr = Array.new
			theCal(arr)
			c = arr[0]/arr[1]
			puts c
		when 5
			arr = Array.new
			theCal(arr)
			c = arr[0]%arr[1]
			puts c
		else
		puts "Enter valid number "		
	end
		
	end
end

c1 = Cal.new
c1.input


=begin
	
Output :
1.Addtion
2.Multiplication
3.Subtract
4.Divide
5.Mode
Enter a number = 4
Enter First number = 7
Enter Second number = 2
3

	
=end

