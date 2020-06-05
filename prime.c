#include "stdio.h"
#include "math.h"

int isPrime(int n){
	int sn = floor(sqrt(n));
	for(int i = 2;i <= sn;i++){
		if(n % i == 0){
			return 0;
		}
	}
	return 1;
}

int main(){
	printf("Primes.\n");
	int c = 0;
	for(int i = 2;i <= 1000000;i++){
		if(isPrime(i)){
			c++;
		}
	}
	printf("Done. %i",c);
	return 0;
}