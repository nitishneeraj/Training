=begin

Christmas Tree

tree(1) ➞ [
  "#"
]

tree(2) ➞ [
  " # ",
  "###"
]

tree(5) ➞ [
  "    #    ",
  "   ###   ",
  "  #####  ",
  " ####### ",
  "#########"
]

tree(0) ➞ []
	
=end


class Tree
	def thetree(num) #user input number
		height = (num*2)-1   # 
		char = "*" # print *
		arr = [] #create emply array
		multi = 1  
		while arr.length < num
			a = char * multi
			row = a.center(height," ")  # 
			arr.push(row)  # push * in array
			multi = multi + 2  # increase * 
		end
		puts arr 

	end
end


t1 = Tree.new
puts " user input print Christmas Tree "
print "Enter number : "
a1 = gets.to_i
t1.thetree a1



=begin
	
Output:    	*    
		   ***   
		  *****  
		 ******* 
		*********

	
=end