# Benchmark Report for */home/vchuravy/src/ScopedVariables*

## Job Properties
* Time of benchmark: 18 Aug 2023 - 11:29
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
| `["BASIC", "scoped with assignment & ref"]` | 107.314 ns (5%) |         | 112 bytes (1%) |           4 |
| `["BASIC", "scoped with assignment"]`       |  66.095 ns (5%) |         | 112 bytes (1%) |           4 |
| `["BASIC", "scoped"]`                       |   1.249 ns (5%) |         |                |             |
| `["BASIC", "unscoped"]`                     | 341.560 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=1"]`              |  22.269 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=10"]`             | 198.036 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=11"]`             | 213.926 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=12"]`             | 231.682 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=13"]`             | 249.751 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=14"]`             | 267.796 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=15"]`             | 288.529 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=16"]`             | 304.297 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=17"]`             | 324.035 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=18"]`             | 341.659 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=19"]`             | 362.596 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=2"]`              |  41.937 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=20"]`             | 379.412 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=21"]`             | 397.500 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=22"]`             | 416.533 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=23"]`             | 435.000 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=24"]`             | 451.726 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=25"]`             | 473.214 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=26"]`             | 490.821 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=27"]`             | 507.979 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=28"]`             | 538.737 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=29"]`             | 547.540 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=3"]`              |  61.059 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=30"]`             | 564.486 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=31"]`             | 582.762 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=32"]`             | 601.243 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=4"]`              |  87.024 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=5"]`              | 104.568 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=6"]`              | 121.517 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=7"]`              | 141.802 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=8"]`              | 159.298 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=9"]`              | 177.915 ns (5%) |         |                |             |
| `["DEPTH", "emtpyf, depth=1"]`              |  88.855 ns (5%) |         | 128 bytes (1%) |           5 |
| `["DEPTH", "emtpyf, depth=10"]`             | 935.000 ns (5%) |         |  1.25 KiB (1%) |          50 |
| `["DEPTH", "emtpyf, depth=11"]`             |   1.104 μs (5%) |         |  1.38 KiB (1%) |          55 |
| `["DEPTH", "emtpyf, depth=12"]`             |   1.180 μs (5%) |         |  1.50 KiB (1%) |          60 |
| `["DEPTH", "emtpyf, depth=13"]`             |   1.278 μs (5%) |         |  1.62 KiB (1%) |          65 |
| `["DEPTH", "emtpyf, depth=14"]`             |   1.364 μs (5%) |         |  1.75 KiB (1%) |          70 |
| `["DEPTH", "emtpyf, depth=15"]`             |   1.509 μs (5%) |         |  1.88 KiB (1%) |          75 |
| `["DEPTH", "emtpyf, depth=16"]`             |   1.561 μs (5%) |         |  2.00 KiB (1%) |          80 |
| `["DEPTH", "emtpyf, depth=17"]`             |   1.715 μs (5%) |         |  2.12 KiB (1%) |          85 |
| `["DEPTH", "emtpyf, depth=18"]`             |   1.844 μs (5%) |         |  2.25 KiB (1%) |          90 |
| `["DEPTH", "emtpyf, depth=19"]`             |   1.987 μs (5%) |         |  2.38 KiB (1%) |          95 |
| `["DEPTH", "emtpyf, depth=2"]`              | 160.050 ns (5%) |         | 256 bytes (1%) |          10 |
| `["DEPTH", "emtpyf, depth=20"]`             |   2.001 μs (5%) |         |  2.50 KiB (1%) |         100 |
| `["DEPTH", "emtpyf, depth=21"]`             |   2.172 μs (5%) |         |  2.62 KiB (1%) |         105 |
| `["DEPTH", "emtpyf, depth=22"]`             |   2.259 μs (5%) |         |  2.75 KiB (1%) |         110 |
| `["DEPTH", "emtpyf, depth=23"]`             |   2.257 μs (5%) |         |  2.88 KiB (1%) |         115 |
| `["DEPTH", "emtpyf, depth=24"]`             |   2.474 μs (5%) |         |  3.00 KiB (1%) |         120 |
| `["DEPTH", "emtpyf, depth=25"]`             |   2.629 μs (5%) |         |  3.12 KiB (1%) |         125 |
| `["DEPTH", "emtpyf, depth=26"]`             |   2.668 μs (5%) |         |  3.25 KiB (1%) |         130 |
| `["DEPTH", "emtpyf, depth=27"]`             |   2.842 μs (5%) |         |  3.38 KiB (1%) |         135 |
| `["DEPTH", "emtpyf, depth=28"]`             |   2.942 μs (5%) |         |  3.50 KiB (1%) |         140 |
| `["DEPTH", "emtpyf, depth=29"]`             |   3.269 μs (5%) |         |  3.62 KiB (1%) |         145 |
| `["DEPTH", "emtpyf, depth=3"]`              | 230.896 ns (5%) |         | 384 bytes (1%) |          15 |
| `["DEPTH", "emtpyf, depth=30"]`             |   3.123 μs (5%) |         |  3.75 KiB (1%) |         150 |
| `["DEPTH", "emtpyf, depth=31"]`             |   3.251 μs (5%) |         |  3.88 KiB (1%) |         155 |
| `["DEPTH", "emtpyf, depth=32"]`             |   3.665 μs (5%) |         |  4.00 KiB (1%) |         160 |
| `["DEPTH", "emtpyf, depth=4"]`              | 366.425 ns (5%) |         | 512 bytes (1%) |          20 |
| `["DEPTH", "emtpyf, depth=5"]`              | 442.615 ns (5%) |         | 640 bytes (1%) |          25 |
| `["DEPTH", "emtpyf, depth=6"]`              | 530.778 ns (5%) |         | 768 bytes (1%) |          30 |
| `["DEPTH", "emtpyf, depth=7"]`              | 669.887 ns (5%) |         | 896 bytes (1%) |          35 |
| `["DEPTH", "emtpyf, depth=8"]`              | 760.588 ns (5%) |         |  1.00 KiB (1%) |          40 |
| `["DEPTH", "emtpyf, depth=9"]`              | 858.276 ns (5%) |         |  1.12 KiB (1%) |          45 |
| `["DEPTH", "scope + access, depth=1"]`      | 681.169 ns (5%) |         | 128 bytes (1%) |           5 |
| `["DEPTH", "scope + access, depth=10"]`     |   1.375 μs (5%) |         |  1.25 KiB (1%) |          50 |
| `["DEPTH", "scope + access, depth=11"]`     |   2.000 μs (5%) |         |  1.38 KiB (1%) |          55 |
| `["DEPTH", "scope + access, depth=12"]`     |   1.962 μs (5%) |         |  1.50 KiB (1%) |          60 |
| `["DEPTH", "scope + access, depth=13"]`     |   1.865 μs (5%) |         |  1.62 KiB (1%) |          65 |
| `["DEPTH", "scope + access, depth=14"]`     |   2.313 μs (5%) |         |  1.75 KiB (1%) |          70 |
| `["DEPTH", "scope + access, depth=15"]`     |   2.004 μs (5%) |         |  1.88 KiB (1%) |          75 |
| `["DEPTH", "scope + access, depth=16"]`     |   2.449 μs (5%) |         |  2.00 KiB (1%) |          80 |
| `["DEPTH", "scope + access, depth=17"]`     |   2.437 μs (5%) |         |  2.12 KiB (1%) |          85 |
| `["DEPTH", "scope + access, depth=18"]`     |   2.461 μs (5%) |         |  2.25 KiB (1%) |          90 |
| `["DEPTH", "scope + access, depth=19"]`     |   2.944 μs (5%) |         |  2.38 KiB (1%) |          95 |
| `["DEPTH", "scope + access, depth=2"]`      | 413.950 ns (5%) |         | 256 bytes (1%) |          10 |
| `["DEPTH", "scope + access, depth=20"]`     |   2.907 μs (5%) |         |  2.50 KiB (1%) |         100 |
| `["DEPTH", "scope + access, depth=21"]`     |   3.236 μs (5%) |         |  2.62 KiB (1%) |         105 |
| `["DEPTH", "scope + access, depth=22"]`     |   2.902 μs (5%) |         |  2.75 KiB (1%) |         110 |
| `["DEPTH", "scope + access, depth=23"]`     |   3.200 μs (5%) |         |  2.88 KiB (1%) |         115 |
| `["DEPTH", "scope + access, depth=24"]`     |   3.261 μs (5%) |         |  3.00 KiB (1%) |         120 |
| `["DEPTH", "scope + access, depth=25"]`     |   3.382 μs (5%) |         |  3.12 KiB (1%) |         125 |
| `["DEPTH", "scope + access, depth=26"]`     |   3.799 μs (5%) |         |  3.25 KiB (1%) |         130 |
| `["DEPTH", "scope + access, depth=27"]`     |   3.989 μs (5%) |         |  3.38 KiB (1%) |         135 |
| `["DEPTH", "scope + access, depth=28"]`     |   4.524 μs (5%) |         |  3.50 KiB (1%) |         140 |
| `["DEPTH", "scope + access, depth=29"]`     |   4.399 μs (5%) |         |  3.62 KiB (1%) |         145 |
| `["DEPTH", "scope + access, depth=3"]`      | 823.976 ns (5%) |         | 384 bytes (1%) |          15 |
| `["DEPTH", "scope + access, depth=30"]`     |   4.330 μs (5%) |         |  3.75 KiB (1%) |         150 |
| `["DEPTH", "scope + access, depth=31"]`     |   4.294 μs (5%) |         |  3.88 KiB (1%) |         155 |
| `["DEPTH", "scope + access, depth=32"]`     |   4.607 μs (5%) |         |  4.00 KiB (1%) |         160 |
| `["DEPTH", "scope + access, depth=4"]`      | 625.183 ns (5%) |         | 512 bytes (1%) |          20 |
| `["DEPTH", "scope + access, depth=5"]`      |   1.180 μs (5%) |         | 640 bytes (1%) |          25 |
| `["DEPTH", "scope + access, depth=6"]`      |   1.292 μs (5%) |         | 768 bytes (1%) |          30 |
| `["DEPTH", "scope + access, depth=7"]`      |   1.303 μs (5%) |         | 896 bytes (1%) |          35 |
| `["DEPTH", "scope + access, depth=8"]`      |   1.198 μs (5%) |         |  1.00 KiB (1%) |          40 |
| `["DEPTH", "scope + access, depth=9"]`      |   1.278 μs (5%) |         |  1.12 KiB (1%) |          45 |

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
       #1-16  4051 MHz    1082294 s        282 s      41334 s   20869973 s       9692 s
  Memory: 125.69889831542969 GB (111007.203125 MB free)
  Uptime: 142505.67 sec
  Load Avg:  2.18  1.97  1.71
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-15.0.7 (ORCJIT, znver2)
  Threads: 1 on 16 virtual cores
```