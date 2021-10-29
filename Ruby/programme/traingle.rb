=begin

what type of traingle



=end

class Traingle

def tr(a,b,c)
  if((a==b) && (b==c) && (a==c))
     puts "equilateral"
  elsif ((a==b)|| (b==c) ||(a==c))
    puts " isosceles "
  else 
    puts " scalene"
  end
end
end
crul1=Traingle.new
puts " Enter value a: "
a=gets.chomp.to_i
puts " Enter value b: "
b=gets.chomp.to_i
puts " Enter value c: "
c =gets.chomp.to_i
crul1.tr a,b,c
