class Cricket
	def balls(balls)
		overs = balls/6 + balls%6 * 0.1
		puts " Yours balls #{balls}  Overs is #{overs}"
	end
end


thecricket = Cricket.new
print "Enter number of balls :"
balls=gets.to_i
thecricket.balls balls