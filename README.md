# ScopedValues.jl

Implement dynamically scoped values for Julia.
This package was primarly inspired by [ContextVariablesX.jl](https://github.com/tkf/ContextVariablesX.jl),
it's corresponding [pull-request to Julia base](https://github.com/JuliaLang/julia/pull/35833), and
Java's [JEPS446](https://openjdk.org/jeps/446).

It has been submitted to Julia as a [JULEP](https://github.com/JuliaLang/julia/pull/50958).

# Usage

```julia
using ScopedValues

const svar = ScopedValue(1)

@show svar[]

# Enter a new dynamic scope and set value
scoped(svar => 2) do
    @show svar
end

# While a ScopedValue contents are constant
# You can store mutable values.
const svar_dict = ScopedValue(Dict())

# Important we are using `merge` to "unshare" the mutable values
# across the different views of the same scoped value.
scoped(svar_dict => merge(svar_dict, Dict(:a => 10))) do
    @show svar_dict[][:a]
end
```

scoped values are inherited across tasks:

```julia
const LEVEL = ScopedValue(:GUEST)

function serve(request, response)
    level = isAdmin(request) ? :ADMIN : :GUEST
    scoped(LEVEL => level) do
        Threads.@spawn handle(request, respone)
    end
end

function open(connection::Database)
    level = LEVEL[]
    if level !== :ADMIN
        error("Access disallowed")
    end
    # ... open connection
end

function handle(request, response)
    open(Database(#=...=#))
    # ...
end
```