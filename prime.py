import math

def isPrime(n):
	sn = math.floor(math.sqrt(n))
	for i in range(2,sn+1):
		if n % i == 0:
			return False
	return True

print("Primes.")
c = 0
for i in range(2,1_000_001):
	if isPrime(i):
		c += 1
print("Done.",c)