simple_array_sum(ar::Array{Int}) = sum(ar)

n = parse(Int, readline(stdin))
ns = map(str->parse(Int, str), split(readline(stdin), r"\s"))
println(simple_array_sum(ns))
