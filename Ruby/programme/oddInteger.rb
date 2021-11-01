
=begin
	
Find the Odd Integer
find_odd([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5]) ➞ -1

find_odd([20, 1, 1, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5]) ➞ 5
	
=end


def find_odd(arr)
	puts "#{arr.select{|v| arr.count(v) % 2 == 1}.uniq[0]}"	//not understand
end


arr=[20, 1, 1, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5] 
find_odd arr
