



$a=50

class Animal
	def eat
		puts " global variable a = #$a"
		
	end

	def color
	 	puts " color is black"
	end 
end

class B
	def b1
		puts "global variable a = #$a"
	end
	
	def print
		puts "welcome to hello word"
		
	end
end

obj1 = Animal.new
obj1.eat
obj1.color
obj2 =B.new
obj2.b1
obj2.print
