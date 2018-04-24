# Primea CLI

## Examples

```shell
primea -c factory.wasm -f make,make --make 0x0061736d01000000 -a
```

Invoke the `make` function twice, with the same arg.

```shell
primea -c counter.wasm -f main,inc -r ed418f9ba309cb65e34a16ed74253fc813a78412 -a 372a08b828598122fc64c4aa94735c770f25bbbc
```

Set an initial state root, invoke the `main` and `inc` functions, and get state for the specified actor.
