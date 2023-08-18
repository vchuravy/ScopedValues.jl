# Benchmark Report for */home/vchuravy/src/ScopedVariables*

## Job Properties
* Time of benchmark: 18 Aug 2023 - 11:46
* Package commit: dirty
* Julia commit: 661654
* Julia command flags: None
* Environment variables: None

## Results
Below is a table of this job's results, obtained by running the benchmarks.
The values listed in the `ID` column have the structure `[parent_group, child_group, ..., key]`, and can be used to
index into the BaseBenchmarks suite to retrieve the corresponding benchmarks.
The percentages accompanying time and memory values in the below table are noise tolerances. The "true"
time/memory value for a given benchmark is expected to fall within this percentage of the reported value.
An empty cell means that the value was zero.

| ID                                          | time            | GC time | memory         | allocations |
|---------------------------------------------|----------------:|--------:|---------------:|------------:|
| `["BASIC", "scoped with assignment & ref"]` |  81.985 ns (5%) |         | 112 bytes (1%) |           4 |
| `["BASIC", "scoped with assignment"]`       |  73.731 ns (5%) |         | 112 bytes (1%) |           4 |
| `["BASIC", "scoped"]`                       |   1.249 ns (5%) |         |                |             |
| `["BASIC", "unscoped"]`                     |   2.980 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=1"]`              |   2.981 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=10"]`             |   7.013 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=11"]`             |   7.750 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=12"]`             |   8.206 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=13"]`             |   8.729 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=14"]`             |   9.677 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=15"]`             |  10.180 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=16"]`             |  10.683 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=17"]`             |  11.491 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=18"]`             |  12.627 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=19"]`             |  13.409 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=2"]`              |   3.723 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=20"]`             |  14.412 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=21"]`             |  15.200 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=22"]`             |  16.382 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=23"]`             |  17.172 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=24"]`             |  18.127 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=25"]`             |  19.128 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=26"]`             |  20.103 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=27"]`             |  21.088 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=28"]`             |  22.105 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=29"]`             |  23.316 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=3"]`              |   3.971 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=30"]`             |  24.054 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=31"]`             |  25.028 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=32"]`             |  26.045 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=4"]`              |   3.964 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=5"]`              |   3.970 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=6"]`              |   4.474 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=7"]`              |   4.971 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=8"]`              |   5.700 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=9"]`              |   6.452 ns (5%) |         |                |             |
| `["DEPTH", "emtpyf, depth=1"]`              |  80.947 ns (5%) |         | 128 bytes (1%) |           5 |
| `["DEPTH", "emtpyf, depth=10"]`             | 988.000 ns (5%) |         |  1.25 KiB (1%) |          50 |
| `["DEPTH", "emtpyf, depth=11"]`             |   1.065 μs (5%) |         |  1.38 KiB (1%) |          55 |
| `["DEPTH", "emtpyf, depth=12"]`             |   1.169 μs (5%) |         |  1.50 KiB (1%) |          60 |
| `["DEPTH", "emtpyf, depth=13"]`             |   1.318 μs (5%) |         |  1.62 KiB (1%) |          65 |
| `["DEPTH", "emtpyf, depth=14"]`             |   1.426 μs (5%) |         |  1.75 KiB (1%) |          70 |
| `["DEPTH", "emtpyf, depth=15"]`             |   1.496 μs (5%) |         |  1.88 KiB (1%) |          75 |
| `["DEPTH", "emtpyf, depth=16"]`             |   1.654 μs (5%) |         |  2.00 KiB (1%) |          80 |
| `["DEPTH", "emtpyf, depth=17"]`             |   1.703 μs (5%) |         |  2.12 KiB (1%) |          85 |
| `["DEPTH", "emtpyf, depth=18"]`             |   1.806 μs (5%) |         |  2.25 KiB (1%) |          90 |
| `["DEPTH", "emtpyf, depth=19"]`             |   1.934 μs (5%) |         |  2.38 KiB (1%) |          95 |
| `["DEPTH", "emtpyf, depth=2"]`              | 156.539 ns (5%) |         | 256 bytes (1%) |          10 |
| `["DEPTH", "emtpyf, depth=20"]`             |   2.118 μs (5%) |         |  2.50 KiB (1%) |         100 |
| `["DEPTH", "emtpyf, depth=21"]`             |   2.136 μs (5%) |         |  2.62 KiB (1%) |         105 |
| `["DEPTH", "emtpyf, depth=22"]`             |   2.208 μs (5%) |         |  2.75 KiB (1%) |         110 |
| `["DEPTH", "emtpyf, depth=23"]`             |   2.430 μs (5%) |         |  2.88 KiB (1%) |         115 |
| `["DEPTH", "emtpyf, depth=24"]`             |   2.466 μs (5%) |         |  3.00 KiB (1%) |         120 |
| `["DEPTH", "emtpyf, depth=25"]`             |   2.553 μs (5%) |         |  3.12 KiB (1%) |         125 |
| `["DEPTH", "emtpyf, depth=26"]`             |   2.800 μs (5%) |         |  3.25 KiB (1%) |         130 |
| `["DEPTH", "emtpyf, depth=27"]`             |   2.827 μs (5%) |         |  3.38 KiB (1%) |         135 |
| `["DEPTH", "emtpyf, depth=28"]`             |   2.991 μs (5%) |         |  3.50 KiB (1%) |         140 |
| `["DEPTH", "emtpyf, depth=29"]`             |   3.109 μs (5%) |         |  3.62 KiB (1%) |         145 |
| `["DEPTH", "emtpyf, depth=3"]`              | 224.435 ns (5%) |         | 384 bytes (1%) |          15 |
| `["DEPTH", "emtpyf, depth=30"]`             |   3.149 μs (5%) |         |  3.75 KiB (1%) |         150 |
| `["DEPTH", "emtpyf, depth=31"]`             |   3.416 μs (5%) |         |  3.88 KiB (1%) |         155 |
| `["DEPTH", "emtpyf, depth=32"]`             |   3.490 μs (5%) |         |  4.00 KiB (1%) |         160 |
| `["DEPTH", "emtpyf, depth=4"]`              | 329.633 ns (5%) |         | 512 bytes (1%) |          20 |
| `["DEPTH", "emtpyf, depth=5"]`              | 444.354 ns (5%) |         | 640 bytes (1%) |          25 |
| `["DEPTH", "emtpyf, depth=6"]`              | 554.111 ns (5%) |         | 768 bytes (1%) |          30 |
| `["DEPTH", "emtpyf, depth=7"]`              | 640.536 ns (5%) |         | 896 bytes (1%) |          35 |
| `["DEPTH", "emtpyf, depth=8"]`              | 755.546 ns (5%) |         |  1.00 KiB (1%) |          40 |
| `["DEPTH", "emtpyf, depth=9"]`              | 856.552 ns (5%) |         |  1.12 KiB (1%) |          45 |
| `["DEPTH", "scope + access, depth=1"]`      | 105.195 ns (5%) |         | 128 bytes (1%) |           5 |
| `["DEPTH", "scope + access, depth=10"]`     |   1.037 μs (5%) |         |  1.25 KiB (1%) |          50 |
| `["DEPTH", "scope + access, depth=11"]`     |   1.217 μs (5%) |         |  1.38 KiB (1%) |          55 |
| `["DEPTH", "scope + access, depth=12"]`     |   1.284 μs (5%) |         |  1.50 KiB (1%) |          60 |
| `["DEPTH", "scope + access, depth=13"]`     |   1.382 μs (5%) |         |  1.62 KiB (1%) |          65 |
| `["DEPTH", "scope + access, depth=14"]`     |   1.674 μs (5%) |         |  1.75 KiB (1%) |          70 |
| `["DEPTH", "scope + access, depth=15"]`     |   1.595 μs (5%) |         |  1.88 KiB (1%) |          75 |
| `["DEPTH", "scope + access, depth=16"]`     |   1.744 μs (5%) |         |  2.00 KiB (1%) |          80 |
| `["DEPTH", "scope + access, depth=17"]`     |   1.822 μs (5%) |         |  2.12 KiB (1%) |          85 |
| `["DEPTH", "scope + access, depth=18"]`     |   1.978 μs (5%) |         |  2.25 KiB (1%) |          90 |
| `["DEPTH", "scope + access, depth=19"]`     |   2.129 μs (5%) |         |  2.38 KiB (1%) |          95 |
| `["DEPTH", "scope + access, depth=2"]`      | 171.300 ns (5%) |         | 256 bytes (1%) |          10 |
| `["DEPTH", "scope + access, depth=20"]`     |   2.267 μs (5%) |         |  2.50 KiB (1%) |         100 |
| `["DEPTH", "scope + access, depth=21"]`     |   2.405 μs (5%) |         |  2.62 KiB (1%) |         105 |
| `["DEPTH", "scope + access, depth=22"]`     |   2.596 μs (5%) |         |  2.75 KiB (1%) |         110 |
| `["DEPTH", "scope + access, depth=23"]`     |   2.585 μs (5%) |         |  2.88 KiB (1%) |         115 |
| `["DEPTH", "scope + access, depth=24"]`     |   2.743 μs (5%) |         |  3.00 KiB (1%) |         120 |
| `["DEPTH", "scope + access, depth=25"]`     |   2.815 μs (5%) |         |  3.12 KiB (1%) |         125 |
| `["DEPTH", "scope + access, depth=26"]`     |   2.830 μs (5%) |         |  3.25 KiB (1%) |         130 |
| `["DEPTH", "scope + access, depth=27"]`     |   2.965 μs (5%) |         |  3.38 KiB (1%) |         135 |
| `["DEPTH", "scope + access, depth=28"]`     |   3.236 μs (5%) |         |  3.50 KiB (1%) |         140 |
| `["DEPTH", "scope + access, depth=29"]`     |   3.400 μs (5%) |         |  3.62 KiB (1%) |         145 |
| `["DEPTH", "scope + access, depth=3"]`      | 257.711 ns (5%) |         | 384 bytes (1%) |          15 |
| `["DEPTH", "scope + access, depth=30"]`     |   3.619 μs (5%) |         |  3.75 KiB (1%) |         150 |
| `["DEPTH", "scope + access, depth=31"]`     |   3.411 μs (5%) |         |  3.88 KiB (1%) |         155 |
| `["DEPTH", "scope + access, depth=32"]`     |   3.600 μs (5%) |         |  4.00 KiB (1%) |         160 |
| `["DEPTH", "scope + access, depth=4"]`      | 370.732 ns (5%) |         | 512 bytes (1%) |          20 |
| `["DEPTH", "scope + access, depth=5"]`      | 499.000 ns (5%) |         | 640 bytes (1%) |          25 |
| `["DEPTH", "scope + access, depth=6"]`      | 587.000 ns (5%) |         | 768 bytes (1%) |          30 |
| `["DEPTH", "scope + access, depth=7"]`      | 714.000 ns (5%) |         | 896 bytes (1%) |          35 |
| `["DEPTH", "scope + access, depth=8"]`      | 803.000 ns (5%) |         |  1.00 KiB (1%) |          40 |
| `["DEPTH", "scope + access, depth=9"]`      | 942.000 ns (5%) |         |  1.12 KiB (1%) |          45 |

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["BASIC"]`
- `["DEPTH"]`

## Julia versioninfo
```
Julia Version 1.10.0-beta1
Commit 6616549950e (2023-07-25 17:43 UTC)
Platform Info:
  OS: Linux (x86_64-linux-gnu)
      "Arch Linux"
  uname: Linux 6.3.2-arch1-1 #1 SMP PREEMPT_DYNAMIC Thu, 11 May 2023 16:40:42 +0000 x86_64 unknown
  CPU: AMD Ryzen 7 3700X 8-Core Processor: 
                 speed         user         nice          sys         idle          irq
       #1-16  4050 MHz    1096215 s        282 s      42091 s   21012008 s       9766 s
  Memory: 125.69889831542969 GB (111567.15234375 MB free)
  Uptime: 143486.41 sec
  Load Avg:  1.75  1.55  1.61
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-15.0.7 (ORCJIT, znver2)
  Threads: 1 on 16 virtual cores
```