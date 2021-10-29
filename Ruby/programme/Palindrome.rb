#Number is Palindrome OR NOT


class Palindrome
  def pali(a) 
    sum=0
    temp=a
    
    while(a>0)
     b=a%10;
     sum = sum*10+b;
     a=a/10;
    end
    if(temp==sum) 
      puts " Palindrom number "
    else
      puts" Not Palindrom number "
    end

  end
end


p1=Palindrome. new 
puts " Enter any number "
a=gets.chomp.to_i
p1.pali a



=begin
A palindrome number is a number that is same after reverse. For example 545, 151, 34543, 343, 171, 48984

 Enter any number 
22
 Palindrom number 

=end
