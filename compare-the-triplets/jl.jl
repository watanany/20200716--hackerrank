using Printf: @printf

a = [parse(Int, s) for s in split(readline(stdin), r"\s")]
b = [parse(Int, s) for s in split(readline(stdin), r"\s")]

alice = count(i > j for (i, j) in zip(a, b))
bob = count(i < j for (i, j) in zip(a, b))
@printf("%d %d\n", alice, bob)
