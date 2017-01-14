# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.
require 'byebug'
def even?(number)
	if number % 2 == 0 
		return true 
	else 
		return false
	end 
end 

def next_number(n)
	if even?(n)
		return n / 2 
	else 
		return 3 * n + 1
	end  
end 

def create_chain(starting_number)
	n = next_number(starting_number)
	output = [starting_number, n]
	while n != 1 do 
		n = next_number(n)
		output.push(n) 
	end 
	return output 
end 

longest_sequence = {length: 0, starting_number: nil} 

starting_number = 13 

while starting_number < 1000000 do 
	arr = create_chain(starting_number)
	if arr.length > longest_sequence[:length]
		longest_sequence[:length] = arr.length
		longest_sequence[:starting_number] = starting_number
	end 
	starting_number +=1
end 

puts longest_sequence