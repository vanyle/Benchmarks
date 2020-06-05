function isPrime(n)
	sn = math.floor(math.sqrt(n))
	for i=2,sn do
		if n % i == 0 then
			return false
		end
	end
	return true
end

print("Primes.")
c = 0
for i=2,1000000 do
	if isPrime(i) then
		c = c + 1	
	end
end
print("Done.",c)