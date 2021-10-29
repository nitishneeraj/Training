

		
		def fib(count)
			a=0
			b=1
			c=0
			k = 0
			while(count>k)
				c=a+b
				puts c
				a=b	
				b=c	
				#puts c		
				#fib(count-1)
				k+=1		
			end
			
		end


	
	count = 10
	
	fib count 
