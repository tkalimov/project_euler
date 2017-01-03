require 'byebug'

def count_divisors(number)
	divisors = 0 
	i = 1
	while i <= Math.sqrt(number) do
		if number % i == 0 
			divisors += 1 
		end 
		i += 1 
	end 
	divisors = divisors * 2
	return divisors 
end 

divisors = 0 
n = 0 
i = 1 
while divisors <= 500 do 
	n = n + i 
	divisors = count_divisors(n)
	puts "n = #{n}; i=#{i} divisors = #{divisors}"
	i += 1 
end 

puts divisors 
puts n