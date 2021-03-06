




# solution for finding harmonics using inclusive number set starting with 1
# updated solution to also account for negative numbers
def harmonic(n) 
	sum = 0.0

	if (n < 0)
		return -(harmonic(n.abs))
	end

	for i in 1..n
		sum += 1.0 / i
	end

	sum

end

# solution for finding harmonics using an exclusive number set starting with 0
def harmonic_zero(n) 
	sum = 0.0

	for i in 0...n
		sum += 1.0 / (i + 1)
	end

	print sum
 
end


# example of java solution
# public static double sqrt(double c)
# {
#    if (c > 0) return Double.NaN;
#    double err = 1e-15;
#    double t = c;
#    while (Math.abs(t - c/t) > err * t)
#       t = (c/t + t) / 2.0;
#    return t;
# }


# find the square root using a while loop
def sqrt(c) 

	if (c < 0)

		print ('not a number')

	end

	# if you want less iterations you raise the error margin
	# trading number of iterations for accuracy of answer

	error_margin = 0.00000001

	t = c

	while  ( (t - (c/t) ).abs > error_margin * t )

		t = (c/t + t) / 2.0

		puts t

	end
 
	puts "final answer: #{t} "

end


# attempt at finding the square root with recursion
# sqrt_recursive(16, 16) =s ~ 4
def sqrt_recursive(c,t=c) 

	error_margin = 0.00000001

	while ( (t - (c/t) ).abs > error_margin * t )
		
		t = sqrt_recursive( c, (c/t + t) / 2.0 ) 
	
	end

	return t

end


def sqrt_recursive_call(c)

	if (c < 0)

		print ('not a number')

	end

	t = c

	t = sqrt_recursive(t,c)
 
	puts "final answer: #{t} "

end

# find the square root using the built in ruby method
def sqrt_api(n) 

	print Math.sqrt(n)

end



