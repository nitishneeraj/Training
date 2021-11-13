=begin
	
Ex:
	
=end

class Table
	def theTable(num)
		for i in 1..1000

			table = num * i
			if(table < 1000)
				print " #{table} "
			end
		end
		
	end
end

t1 = Table.new
print "Enter a number : "
a1 = gets.to_i
t1.theTable a1

=begin

Output:
Enter a number : 15
 15  30  45  60  75  90  105  120  135  150  165  180  195  210  
 225  240  255  270  285  300  315  330  345  360  375  390  405  
 420  435  450  465  480  495  510  525  540  555  570  585  600 
 615  630  645  660  675  690  705  720  735  750  765  780  795  
 810  825  840  855  870  885  900  915  930  945  960  975  990 
	
=end