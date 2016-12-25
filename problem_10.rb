primes = [2,3]


def test_prime(candidate, previous_primes)
	n = 0 
	while previous_primes[n] <= Math.sqrt(candidate) do 
		if candidate % previous_primes[n] == 0 
			return false 
		else 
			n +=1 
		end 
	end 
	return true 
end 

sum = 5
candidate = 4
while candidate < 2000000 
	if test_prime(candidate, primes)
		primes.push(candidate)
		sum += candidate
		puts sum
	end 
	candidate += 1
end 
