
=begin 

Reverse the Odd Length Words
Ex: reverse_odd("Bananas") ➞ "sananaB"

	reverse_odd("One two three four") ➞ "enO owt eerht four"

=end



def reverse(str)  arr = str.split(' ') # splitting of the word
  result= []    # creating empty array list
  arr.each do |word|           #loop for each odd length  word
    if word.length%2!=0        # checking the odd length
      result.push(word.reverse) # pushing reverse odd length words into empty list
    else
      result.push(word)   #pushing non odd len word
    end
  end
  result.join(' ')
  puts result
end

str = String.new
reverse("This is my pen")



=begin

Output : 

This
is
my
nep

	
=end
