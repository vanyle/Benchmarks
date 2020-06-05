function isPrime(n){
	let sn = Math.floor(Math.sqrt(n));
	for(let i = 2;i <= sn;i++){
		if(n % i === 0){
			return false;
		}
	}
	return true;
}

console.log("Primes.");
let c = 0;
for(let i = 2;i <= 1000000;i++){
	if(isPrime(i)){
		c++;
	}
}
console.log("Done.",c);