# Languages Benchmarks
A comparison of various language for performance.

## Languages compared

- Python (3.7)
https://www.python.org/

- LUA (5.3)
https://www.lua.org/

- LUA with Just-In-Time compilation (jit)
https://luajit.org/

- Javascript (NodeJS v10.15)
https://nodejs.org/

- C
https://en.wikipedia.org/wiki/C_(programming_language)

- OCaml
https://ocaml.org/

- OCaml (compiled)
https://ocaml.org/

## Program used
Counting the number of primes between 2 and 1,000,000 (included).
The result should be `78498`

Because we are not interested in how fast the languages can print to stdout, we
only display results at the end. We count the number of time we are in the main
loop to avoid the loop being removed during optimization phases.

Everything was ran on Windows.
Mesurements were done with `Measure-Command {<command_to_run>}`

Every program was ran 3 times and the average time is displayed.

`Measure-Command {python .\prime.py}`

`Measure-Command {lua .\prime.lua}`

`Measure-Command {luajit .\prime.lua}`

`Measure-Command {node .\prime.js}`

`gcc prime.c -o prime.exe -O3`
`Measure-Command {.\prime.exe}`

`Measure-Command {ocaml .\prime.ml}`

`ocamlc -o prime_ocaml prime.ml`
`Measure-Command {ocamlrun .\prime_ocaml}`

## Results

| Language | Time (in ms) |
|----------|--------------|
| Python   | 5035         |
| Lua      | 3049         |
| OCaml    | 2269         |
| OCaml (C)| 1561         |
| Lua (jit)| 140          |
| JS       | 365          |
| C        | 177          |

## Conclusion

JIT scripting languages (like JS and LUAjit) are way faster.

LUAjit is basically magic with performance as fast as C for a purely arithmetic program (almost no memory involved).

If you are using lua, consider switching to luajit if you need more speed. 

The performance gain from compiling OCaml is disappointing.

The performance of Python is very bad.
I would advise using python for prototyping and switching to something else for production or performance critical code.