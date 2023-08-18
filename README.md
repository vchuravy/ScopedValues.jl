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

# Performance

v"1.10.0-beta1" AMD Ryzen 7 3700X 8-Core Processor

## ScopedValues
```julia
using ScopedValues
using BenchmarkTools

const svar = ScopedValue(1)

const depth = ScopedValue(0)
function nth_scoped(f, n)
    if n <= 0
        f()
    else
        scoped(depth => n) do
            nth_scoped(f, n-1)
        end
    end
end

julia> @benchmark svar[]
BenchmarkTools.Trial: 10000 samples with 1000 evaluations.
 Range (min … max):  4.240 ns … 9.390 ns  ┊ GC (min … max): 0.00% … 0.00%
 Time  (median):     4.350 ns             ┊ GC (median):    0.00%
 Time  (mean ± σ):   4.378 ns ± 0.174 ns  ┊ GC (mean ± σ):  0.00% ± 0.00%

         ▆█                                                  
  ▂▂▂▃▄▂▂███▅▂▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▂▁▁▂▁▁▁▁▂▁▁▁▁▁▁▁▁▁▁▁▃ ▂
  4.24 ns        Histogram: frequency by time       4.97 ns <

 Memory estimate: 0 bytes, allocs estimate: 0.

julia> @benchmark scoped() do
       end
BenchmarkTools.Trial: 10000 samples with 973 evaluations.
 Range (min … max):  70.154 ns …  20.789 μs  ┊ GC (min … max): 0.00% … 99.50%
 Time  (median):     76.403 ns               ┊ GC (median):    0.00%
 Time  (mean ± σ):   89.977 ns ± 236.338 ns  ┊ GC (mean ± σ):  5.25% ±  2.58%

   █▃                                                           
  ▂██▃▂▂▂▂▂▄▆▃▅▃▂▂▂▂▂▂▁▂▁▁▁▁▂▂▂▁▁▂▁▁▁▁▁▁▁▁▂▁▁▁▁▁▁▁▁▁▁▁▁▂▂▂▂▂▂▂ ▂
  70.2 ns         Histogram: frequency by time          224 ns <

 Memory estimate: 112 bytes, allocs estimate: 4.

julia> @benchmark scoped(svar=>2) do
              end
BenchmarkTools.Trial: 10000 samples with 960 evaluations.
 Range (min … max):   83.616 ns …  33.234 μs  ┊ GC (min … max): 0.00% … 99.49%
 Time  (median):     134.760 ns               ┊ GC (median):    0.00%
 Time  (mean ± σ):   135.059 ns ± 433.204 ns  ┊ GC (mean ± σ):  8.95% ±  3.26%

        ▁ ▁                                        ▁▄▇█▄         
  ▂▃▄▅▆▇█▇█▄▃▂▃▂▂▂▂▂▂▂▂▂▁▂▂▁▁▁▁▂▁▂▁▂▂▂▂▂▂▂▂▂▃▄▅▆▇▇███████▄▃▂▂▂▂ ▃
  83.6 ns          Histogram: frequency by time          147 ns <

 Memory estimate: 208 bytes, allocs estimate: 7.

# Test repeated access inside scope
julia> scoped() do
          @benchmark svar[]
       end
BenchmarkTools.Trial: 10000 samples with 1000 evaluations.
 Range (min … max):  6.200 ns … 11.150 ns  ┊ GC (min … max): 0.00% … 0.00%
 Time  (median):     6.209 ns              ┊ GC (median):    0.00%
 Time  (mean ± σ):   6.211 ns ±  0.121 ns  ┊ GC (mean ± σ):  0.00% ± 0.00%

  █                                                   ▆       
  █▁▁▁▁▂▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▃▁▁▁▁█▁▁▁▁▃ ▂
  6.2 ns         Histogram: frequency by time        6.21 ns <

 Memory estimate: 0 bytes, allocs estimate: 0.

julia> scoped(svar => 2) do
           nth_scoped(16) do
               @benchmark svar[]
           end
       end
BenchmarkTools.Trial: 10000 samples with 1000 evaluations.
 Range (min … max):  6.200 ns … 19.020 ns  ┊ GC (min … max): 0.00% … 0.00%
 Time  (median):     6.210 ns              ┊ GC (median):    0.00%
 Time  (mean ± σ):   6.215 ns ±  0.188 ns  ┊ GC (mean ± σ):  0.00% ± 0.00%

  ▄                                                   █       
  █▁▁▁▁▂▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▃▁▁▁▁█▁▁▁▁▃ ▂
  6.2 ns         Histogram: frequency by time        6.21 ns <

# Create scope & first access
# First access get's more expensive with depth.
julia> @benchmark scoped(svar=>2) do
           svar[]
       end
BenchmarkTools.Trial: 10000 samples with 955 evaluations.
 Range (min … max):   86.021 ns …  39.766 μs  ┊ GC (min … max): 0.00% … 99.69%
 Time  (median):     137.246 ns               ┊ GC (median):    0.00%
 Time  (mean ± σ):   140.778 ns ± 518.198 ns  ┊ GC (mean ± σ):  9.05% ±  2.79%

        ▁▄                                  ▁▃▃▄▄▆▇█▆▂           
  ▃▄▇▅▄▇██▆▇▃▂▂▂▂▂▂▂▂▁▁▂▁▁▂▂▁▂▂▂▂▂▁▁▂▂▃▄▄▆▆███████████▆▃▃▃▂▂▂▂▂ ▄
  86 ns            Histogram: frequency by time          155 ns <

 Memory estimate: 208 bytes, allocs estimate: 7.

julia> @benchmark scoped(svar => 2) do
           nth_scoped(2) do
               svar[]
           end
       end
BenchmarkTools.Trial: 10000 samples with 349 evaluations.
 Range (min … max):  252.206 ns … 110.078 μs  ┊ GC (min … max): 0.00% … 99.55%
 Time  (median):     374.427 ns               ┊ GC (median):    0.00%
 Time  (mean ± σ):   387.500 ns ±   1.393 μs  ┊ GC (mean ± σ):  8.23% ±  2.62%

        ▄▁                                 ▃▄▂  ▂▆█▅             
  ▂▂▃▄▄▇██▄▃▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▁▂▁▂▂▁▁▁▂▂▂▃▄▄▅▇██████████▅▃▃▂▂▂▂▂▂▂ ▃
  252 ns           Histogram: frequency by time          421 ns <

 Memory estimate: 496 bytes, allocs estimate: 18.

julia> @benchmark scoped(svar => 2) do
           nth_scoped(16) do
               svar[]
           end
       end
BenchmarkTools.Trial: 10000 samples with 10 evaluations.
 Range (min … max):  1.617 μs …  1.253 ms  ┊ GC (min … max): 0.00% … 99.56%
 Time  (median):     2.206 μs              ┊ GC (median):    0.00%
 Time  (mean ± σ):   2.278 μs ± 12.513 μs  ┊ GC (mean ± σ):  5.48% ±  1.00%

      ▄▂                ▂▅▁▁█▅▂▂▂                             
  ▄▄▄▇██▄▃▂▂▂▁▂▁▂▂▁▂▁▁▁▂█████████▇▅▅▄▃▂▂▂▂▂▂▂▂▂▂▂▂▂▃▃▃▃▃▃▃▃▃ ▃
  1.62 μs        Histogram: frequency by time        2.92 μs <

 Memory estimate: 2.23 KiB, allocs estimate: 88.
```

## ContextVariablesX
ContextVariablesX is a prior proposal for a similar context.
It uses a Julia `Dict` under the hood and it not safe for concurrent
access with multiple tasks. This is the primary performance difference.

Furthermore on `with_context` a copy of the context is created and passed
to the lambda. ScopedValues avoid this copy, but has a higher cost for
initial access.

```julia
using ContextVariablesX
using BenchmarkTools

@contextvar cvar::Int=1

function nth_context(f, n)
    if n <= 0
        f()
    else
        with_context() do
            nth_context(f, n-1)
        end
    end
end

julia> @benchmark cvar[]
BenchmarkTools.Trial: 10000 samples with 1000 evaluations.
 Range (min … max):  3.980 ns … 12.640 ns  ┊ GC (min … max): 0.00% … 0.00%
 Time  (median):     3.980 ns              ┊ GC (median):    0.00%
 Time  (mean ± σ):   4.017 ns ±  0.297 ns  ┊ GC (mean ± σ):  0.00% ± 0.00%

  █                                                           
  █▂▁▁▂▁▁▁▂▁▁▁▁▁▁▂▁▁▂▂▁▁▂▂▂▁▁▁▁▁▁▁▁▂▁▁▁▁▂▁▁▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂ ▂
  3.98 ns        Histogram: frequency by time        5.79 ns <

 Memory estimate: 0 bytes, allocs estimate: 0.

julia> @benchmark with_context() do
        end
BenchmarkTools.Trial: 10000 samples with 983 evaluations.
 Range (min … max):  59.613 ns …  20.240 μs  ┊ GC (min … max): 0.00% … 99.44%
 Time  (median):     65.534 ns               ┊ GC (median):    0.00%
 Time  (mean ± σ):   75.120 ns ± 214.215 ns  ┊ GC (mean ± σ):  4.21% ±  1.96%

  ▅██▆▃▁ ▁▆▅▄▄▁                                                ▂
  █████████████▇▅▁▄▃▃▁▄▃▃▁▁▃▃▁▁▁▁▁▁▁▁▁▃▁▁▁▁▁▃▃▁▁▁▁▁▁▃▃▄▅▁▇▅▇▇█ █
  59.6 ns       Histogram: log(frequency) by time       209 ns <

 Memory estimate: 80 bytes, allocs estimate: 3.

julia> @benchmark with_context(cvar=>2) do
               end
BenchmarkTools.Trial: 10000 samples with 540 evaluations.
 Range (min … max):  210.835 ns …  45.613 μs  ┊ GC (min … max):  0.00% … 99.32%
 Time  (median):     229.935 ns               ┊ GC (median):     0.00%
 Time  (mean ± σ):   327.916 ns ± 702.548 ns  ┊ GC (mean ± σ):  10.61% ±  5.60%

    ▇█                                   ▂▁                      
  ▃▅██▇▄▃▂▂▂▂▁▂▂▂▂▁▁▂▁▁▁▂▂▂▁▂▂▂▂▂▂▂▂▂▂▂▄▇██▅▃▃▃▂▂▂▂▂▂▁▂▁▁▁▁▁▂▂▂ ▃
  211 ns           Histogram: frequency by time          470 ns <

 Memory estimate: 752 bytes, allocs estimate: 7.

julia> with_context() do
           @benchmark cvar[]
       end
BenchmarkTools.Trial: 10000 samples with 1000 evaluations.
 Range (min … max):  3.730 ns … 16.760 ns  ┊ GC (min … max): 0.00% … 0.00%
 Time  (median):     3.820 ns              ┊ GC (median):    0.00%
 Time  (mean ± σ):   3.865 ns ±  0.310 ns  ┊ GC (mean ± σ):  0.00% ± 0.00%

        █▃                                                 ▃ ▁
  ▃▁▁▁▁▁██▁▁▁▁▁▃▁▁▁▃▃▃▃▁▁▁▁▃▁▁▁▁▁▁▃▁▃▁▁▁▁▁▁▃▁▃▁▁▁▁▁▁▁▃▃▁▁▁██ █
  3.73 ns      Histogram: log(frequency) by time     4.48 ns <

 Memory estimate: 0 bytes, allocs estimate: 0.

julia> with_context(cvar => 2) do
          nth_context(2) do
             @benchmark cvar[]
          end
       end
BenchmarkTools.Trial: 10000 samples with 998 evaluations.
 Range (min … max):  15.050 ns … 23.919 ns  ┊ GC (min … max): 0.00% … 0.00%
 Time  (median):     15.291 ns              ┊ GC (median):    0.00%
 Time  (mean ± σ):   15.314 ns ±  0.278 ns  ┊ GC (mean ± σ):  0.00% ± 0.00%

                              ▂▂  ▁▁       ▂     ▄█            
  ▂▂▃▁▂▂▁▂▂▁▂▂▁▂▂▁▂▂▁▄▄▂▄▄▂▆█▃██▇▃██▂█▆▂▆▆▁█▇▁▅▄▁██▁▅▃▁▃▂▁▃▃▂ ▃
  15.1 ns         Histogram: frequency by time        15.5 ns <

 Memory estimate: 0 bytes, allocs estimate: 0.

julia> with_context(cvar => 2) do
          nth_context(16) do
             @benchmark cvar[]
          end
       end
BenchmarkTools.Trial: 10000 samples with 998 evaluations.
 Range (min … max):  14.739 ns … 27.605 ns  ┊ GC (min … max): 0.00% … 0.00%
 Time  (median):     14.980 ns              ┊ GC (median):    0.00%
 Time  (mean ± σ):   15.054 ns ±  0.617 ns  ┊ GC (mean ± σ):  0.00% ± 0.00%

    ▃█▅                                                        
  ▄▃███▅▅▃▂▂▁▂▂▂▂▁▂▁▂▁▂▂▂▂▁▂▂▁▂▁▂▂▂▁▂▂▂▁▂▂▂▂▂▂▁▂▂▂▁▂▂▂▂▁▂▁▁▂▂ ▂
  14.7 ns         Histogram: frequency by time        18.6 ns <

 Memory estimate: 0 bytes, allocs estimate: 0.

julia> @benchmark with_context() do
             cvar[]
       end
BenchmarkTools.Trial: 10000 samples with 974 evaluations.
 Range (min … max):  69.014 ns …  45.689 μs  ┊ GC (min … max): 0.00% … 99.73%
 Time  (median):     87.053 ns               ┊ GC (median):    0.00%
 Time  (mean ± σ):   88.994 ns ± 456.400 ns  ┊ GC (mean ± σ):  5.12% ±  1.00%

  ▁▄     █▃                                                     
  ██▆▂▂▂▄██▆▄▂▂▂▂▂▂▂▂▂▁▁▁▁▁▁▁▁▁▂▁▂▁▁▁▂▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▂▂▁▂▁▂▂ ▃
  69 ns           Histogram: frequency by time          218 ns <

 Memory estimate: 80 bytes, allocs estimate: 3.

julia> @benchmark with_context(cvar => 2) do
          nth_context(2) do
             cvar[]
           end
       end
BenchmarkTools.Trial: 10000 samples with 197 evaluations.
 Range (min … max):  430.203 ns … 359.893 μs  ┊ GC (min … max): 0.00% … 99.79%
 Time  (median):     643.553 ns               ┊ GC (median):    0.00%
 Time  (mean ± σ):   674.952 ns ±   4.461 μs  ┊ GC (mean ± σ):  9.23% ±  1.41%

                  ▁█▇▁                                           
  ▇█▃▅▄▂▂▂▂▂▂▂▂▂▂▄████▆▃▂▂▂▂▂▂▂▂▂▂▂▂▁▁▂▁▁▁▁▁▂▂▂▁▂▂▂▂▁▁▁▁▂▂▂▂▂▂▂ ▃
  430 ns           Histogram: frequency by time         1.17 μs <

 Memory estimate: 944 bytes, allocs estimate: 15.

julia> @benchmark with_context(cvar => 2) do
          nth_context(16) do
             cvar[]
           end
       end
BenchmarkTools.Trial: 10000 samples with 9 evaluations.
 Range (min … max):  2.238 μs …   4.690 μs  ┊ GC (min … max): 0.00% … 0.00%
 Time  (median):     2.783 μs               ┊ GC (median):    0.00%
 Time  (mean ± σ):   2.817 μs ± 236.955 ns  ┊ GC (mean ± σ):  0.00% ± 0.00%

                    ▂▆▂▂▇█▅▃▄▃▁                                
  ▁▂▃▂▂▁▁▁▂▁▂▂▂▂▃▅▄▅███████████▆▆▅▄▂▂▂▂▁▁▁▁▁▁▁▁▂▁▂▂▂▂▂▂▂▂▂▂▂▁ ▃
  2.24 μs         Histogram: frequency by time        3.59 μs <

 Memory estimate: 2.23 KiB, allocs estimate: 71.
```