
a = 1
b = 1 
c = 1000 - a - b

candidates = []
1000.times do
	b = 1
	1000.times do
		c = 1000 - a - b
		if c > 0 && (a*a + b*b == c*c)
			candidates.push([a,b,c])
		end 
		b += 1
		# puts "#{a} + #{b} + #{c}"
	end 
	a += 1
end 
puts candidates[0][0]*candidates[0][1]*candidates[0][2]
