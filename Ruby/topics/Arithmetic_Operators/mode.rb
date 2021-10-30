=begin 
Ruby program to mode two numbers.
=end

# input the numbers and converting 
# them into integer 
puts "Enter first value: "
num1=gets.chomp.to_i
puts "Enter second value: "
num2=gets.chomp.to_i

# finding mode 
mod=num1%num2

# printing the result
puts "The mode is #{mod}"

