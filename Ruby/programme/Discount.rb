=begin
	

	
=end


class Discount
	def dis(price,discount)
		result = price * (100.0 - discount) / 100
		puts result
	end
end

thediscount = Discount.new
print " Enter price : "
theprice = gets.to_i

print " Enter Discount : "
thedis = gets.to_i

thediscount.dis theprice,thedis
