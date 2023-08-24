# Benchmark Report for */home/vchuravy/src/ScopedVariables*

## Job Properties
* Time of benchmark: 24 Aug 2023 - 19:0
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
| `["BASIC", "scoped with assignment & ref"]` |  75.104 ns (5%) |         | 112 bytes (1%) |           4 |
| `["BASIC", "scoped with assignment"]`       |  70.622 ns (5%) |         | 112 bytes (1%) |           4 |
| `["BASIC", "scoped"]`                       |   1.267 ns (5%) |         |                |             |
| `["BASIC", "unscoped"]`                     |   4.281 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=1"]`              |   5.285 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=10"]`             |  11.250 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=11"]`             |  12.424 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=12"]`             |  13.291 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=13"]`             |  14.199 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=14"]`             |  15.914 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=15"]`             |  17.592 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=16"]`             |  18.650 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=17"]`             |  20.556 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=18"]`             |  21.733 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=19"]`             |  23.699 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=2"]`              |   5.437 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=20"]`             |  24.617 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=21"]`             |  25.872 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=22"]`             |  28.169 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=23"]`             |  29.698 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=24"]`             |  30.707 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=25"]`             |  32.066 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=26"]`             |  33.927 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=27"]`             |  35.619 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=28"]`             |  36.474 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=29"]`             |  37.920 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=3"]`              |   6.113 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=30"]`             |  39.423 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=31"]`             |  45.101 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=32"]`             |  42.416 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=4"]`              |   6.318 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=5"]`              |   7.068 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=6"]`              |   7.176 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=7"]`              |   8.277 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=8"]`              |   9.328 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=9"]`              |  10.143 ns (5%) |         |                |             |
| `["DEPTH", "emtpyf, depth=1"]`              |  81.881 ns (5%) |         | 128 bytes (1%) |           5 |
| `["DEPTH", "emtpyf, depth=10"]`             | 843.228 ns (5%) |         |  1.25 KiB (1%) |          50 |
| `["DEPTH", "emtpyf, depth=11"]`             | 909.930 ns (5%) |         |  1.38 KiB (1%) |          55 |
| `["DEPTH", "emtpyf, depth=12"]`             | 974.960 ns (5%) |         |  1.50 KiB (1%) |          60 |
| `["DEPTH", "emtpyf, depth=13"]`             |   1.084 μs (5%) |         |  1.62 KiB (1%) |          65 |
| `["DEPTH", "emtpyf, depth=14"]`             |   1.165 μs (5%) |         |  1.75 KiB (1%) |          70 |
| `["DEPTH", "emtpyf, depth=15"]`             |   1.229 μs (5%) |         |  1.88 KiB (1%) |          75 |
| `["DEPTH", "emtpyf, depth=16"]`             |   1.340 μs (5%) |         |  2.00 KiB (1%) |          80 |
| `["DEPTH", "emtpyf, depth=17"]`             |   1.375 μs (5%) |         |  2.12 KiB (1%) |          85 |
| `["DEPTH", "emtpyf, depth=18"]`             |   1.465 μs (5%) |         |  2.25 KiB (1%) |          90 |
| `["DEPTH", "emtpyf, depth=19"]`             |   1.617 μs (5%) |         |  2.38 KiB (1%) |          95 |
| `["DEPTH", "emtpyf, depth=2"]`              | 165.580 ns (5%) |         | 256 bytes (1%) |          10 |
| `["DEPTH", "emtpyf, depth=20"]`             |   1.666 μs (5%) |         |  2.50 KiB (1%) |         100 |
| `["DEPTH", "emtpyf, depth=21"]`             |   1.694 μs (5%) |         |  2.62 KiB (1%) |         105 |
| `["DEPTH", "emtpyf, depth=22"]`             |   1.757 μs (5%) |         |  2.75 KiB (1%) |         110 |
| `["DEPTH", "emtpyf, depth=23"]`             |   1.894 μs (5%) |         |  2.88 KiB (1%) |         115 |
| `["DEPTH", "emtpyf, depth=24"]`             |   2.041 μs (5%) |         |  3.00 KiB (1%) |         120 |
| `["DEPTH", "emtpyf, depth=25"]`             |   2.050 μs (5%) |         |  3.12 KiB (1%) |         125 |
| `["DEPTH", "emtpyf, depth=26"]`             |   2.142 μs (5%) |         |  3.25 KiB (1%) |         130 |
| `["DEPTH", "emtpyf, depth=27"]`             |   2.202 μs (5%) |         |  3.38 KiB (1%) |         135 |
| `["DEPTH", "emtpyf, depth=28"]`             |   2.303 μs (5%) |         |  3.50 KiB (1%) |         140 |
| `["DEPTH", "emtpyf, depth=29"]`             |   2.366 μs (5%) |         |  3.62 KiB (1%) |         145 |
| `["DEPTH", "emtpyf, depth=3"]`              | 246.950 ns (5%) |         | 384 bytes (1%) |          15 |
| `["DEPTH", "emtpyf, depth=30"]`             |   2.426 μs (5%) |         |  3.75 KiB (1%) |         150 |
| `["DEPTH", "emtpyf, depth=31"]`             |   2.579 μs (5%) |         |  3.88 KiB (1%) |         155 |
| `["DEPTH", "emtpyf, depth=32"]`             |   2.655 μs (5%) |         |  4.00 KiB (1%) |         160 |
| `["DEPTH", "emtpyf, depth=4"]`              | 357.575 ns (5%) |         | 512 bytes (1%) |          20 |
| `["DEPTH", "emtpyf, depth=5"]`              | 434.925 ns (5%) |         | 640 bytes (1%) |          25 |
| `["DEPTH", "emtpyf, depth=6"]`              | 508.259 ns (5%) |         | 768 bytes (1%) |          30 |
| `["DEPTH", "emtpyf, depth=7"]`              | 578.924 ns (5%) |         | 896 bytes (1%) |          35 |
| `["DEPTH", "emtpyf, depth=8"]`              | 665.710 ns (5%) |         |  1.00 KiB (1%) |          40 |
| `["DEPTH", "emtpyf, depth=9"]`              | 740.889 ns (5%) |         |  1.12 KiB (1%) |          45 |
| `["DEPTH", "scope + access, depth=1"]`      | 134.991 ns (5%) |         | 128 bytes (1%) |           5 |
| `["DEPTH", "scope + access, depth=10"]`     | 845.333 ns (5%) |         |  1.25 KiB (1%) |          50 |
| `["DEPTH", "scope + access, depth=11"]`     | 978.500 ns (5%) |         |  1.38 KiB (1%) |          55 |
| `["DEPTH", "scope + access, depth=12"]`     |   1.065 μs (5%) |         |  1.50 KiB (1%) |          60 |
| `["DEPTH", "scope + access, depth=13"]`     |   1.117 μs (5%) |         |  1.62 KiB (1%) |          65 |
| `["DEPTH", "scope + access, depth=14"]`     |   1.251 μs (5%) |         |  1.75 KiB (1%) |          70 |
| `["DEPTH", "scope + access, depth=15"]`     |   1.257 μs (5%) |         |  1.88 KiB (1%) |          75 |
| `["DEPTH", "scope + access, depth=16"]`     |   1.374 μs (5%) |         |  2.00 KiB (1%) |          80 |
| `["DEPTH", "scope + access, depth=17"]`     |   1.498 μs (5%) |         |  2.12 KiB (1%) |          85 |
| `["DEPTH", "scope + access, depth=18"]`     |   1.521 μs (5%) |         |  2.25 KiB (1%) |          90 |
| `["DEPTH", "scope + access, depth=19"]`     |   1.641 μs (5%) |         |  2.38 KiB (1%) |          95 |
| `["DEPTH", "scope + access, depth=2"]`      | 183.568 ns (5%) |         | 256 bytes (1%) |          10 |
| `["DEPTH", "scope + access, depth=20"]`     |   1.750 μs (5%) |         |  2.50 KiB (1%) |         100 |
| `["DEPTH", "scope + access, depth=21"]`     |   1.883 μs (5%) |         |  2.62 KiB (1%) |         105 |
| `["DEPTH", "scope + access, depth=22"]`     |   1.888 μs (5%) |         |  2.75 KiB (1%) |         110 |
| `["DEPTH", "scope + access, depth=23"]`     |   2.009 μs (5%) |         |  2.88 KiB (1%) |         115 |
| `["DEPTH", "scope + access, depth=24"]`     |   2.163 μs (5%) |         |  3.00 KiB (1%) |         120 |
| `["DEPTH", "scope + access, depth=25"]`     |   2.176 μs (5%) |         |  3.12 KiB (1%) |         125 |
| `["DEPTH", "scope + access, depth=26"]`     |   2.186 μs (5%) |         |  3.25 KiB (1%) |         130 |
| `["DEPTH", "scope + access, depth=27"]`     |   2.288 μs (5%) |         |  3.38 KiB (1%) |         135 |
| `["DEPTH", "scope + access, depth=28"]`     |   2.415 μs (5%) |         |  3.50 KiB (1%) |         140 |
| `["DEPTH", "scope + access, depth=29"]`     |   2.548 μs (5%) |         |  3.62 KiB (1%) |         145 |
| `["DEPTH", "scope + access, depth=3"]`      | 319.961 ns (5%) |         | 384 bytes (1%) |          15 |
| `["DEPTH", "scope + access, depth=30"]`     |   2.562 μs (5%) |         |  3.75 KiB (1%) |         150 |
| `["DEPTH", "scope + access, depth=31"]`     |   2.670 μs (5%) |         |  3.88 KiB (1%) |         155 |
| `["DEPTH", "scope + access, depth=32"]`     |   2.851 μs (5%) |         |  4.00 KiB (1%) |         160 |
| `["DEPTH", "scope + access, depth=4"]`      | 383.212 ns (5%) |         | 512 bytes (1%) |          20 |
| `["DEPTH", "scope + access, depth=5"]`      | 497.503 ns (5%) |         | 640 bytes (1%) |          25 |
| `["DEPTH", "scope + access, depth=6"]`      | 542.046 ns (5%) |         | 768 bytes (1%) |          30 |
| `["DEPTH", "scope + access, depth=7"]`      | 629.495 ns (5%) |         | 896 bytes (1%) |          35 |
| `["DEPTH", "scope + access, depth=8"]`      | 729.067 ns (5%) |         |  1.00 KiB (1%) |          40 |
| `["DEPTH", "scope + access, depth=9"]`      | 806.753 ns (5%) |         |  1.12 KiB (1%) |          45 |

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
  uname: Linux 6.4.3-arch1-1 #1 SMP PREEMPT_DYNAMIC Tue, 11 Jul 2023 05:13:39 +0000 x86_64 unknown
  CPU: Intel(R) Core(TM) i7-7660U CPU @ 2.50GHz: 
              speed         user         nice          sys         idle          irq
       #1  3649 MHz      16374 s         46 s       3408 s      73235 s       2156 s
       #2  3756 MHz      15733 s         60 s       3276 s      75717 s        385 s
       #3  3701 MHz      16962 s         44 s       3480 s      74365 s        368 s
       #4  3674 MHz      13882 s         34 s       3246 s      77359 s        593 s
  Memory: 15.38076400756836 GB (4820.5859375 MB free)
  Uptime: 30374.39 sec
  Load Avg:  1.23  1.09  0.99
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-15.0.7 (ORCJIT, skylake)
  Threads: 1 on 4 virtual cores
```