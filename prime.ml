let isPrime n = 
	let sn = int_of_float (sqrt (float_of_int n)) in
	let rec loop i = (* How to break from a for loop in ocaml ... *)
		if n mod i = 0 then
			false
		else if i > sn then
			true
		else
			loop (i+1)
	in loop 2;;

print_string "Primes.\n";;
let c = ref 0;;
for i=2 to 1000000 do
	if isPrime i then incr c
done;;
print_string "Done. ";;
print_int !c;;