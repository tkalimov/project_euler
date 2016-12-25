
require 'byebug'
primes = [2,3,5,7,11]
candidate = 12


# keep going through every previous prime until you get to the squareroot of the candidate. If you find it's divisible, then stop. If you find it's not divisible, then add it to the array and go to the next candidate


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

until primes.length == 10001
	if test_prime(candidate, primes)
		primes.push(candidate)
		puts candidate
	end 
	candidate += 1
end 

puts "the end"