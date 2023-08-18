# Benchmark Report for */home/vchuravy/src/ScopedVariables*

## Job Properties
* Time of benchmark: 18 Aug 2023 - 11:20
* Package commit: d9ac02
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
| `["BASIC", "scoped with assignment & ref"]` |  94.551 ns (5%) |         | 208 bytes (1%) |           7 |
| `["BASIC", "scoped with assignment"]`       |  87.797 ns (5%) |         | 208 bytes (1%) |           7 |
| `["BASIC", "scoped"]`                       |   1.249 ns (5%) |         |                |             |
| `["BASIC", "unscoped"]`                     |   4.350 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=1"]`              |   6.273 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=10"]`             |   8.900 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=11"]`             |   8.900 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=12"]`             |   8.900 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=13"]`             |   8.900 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=14"]`             |   8.900 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=15"]`             |   8.900 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=16"]`             |   8.900 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=17"]`             |   9.889 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=18"]`             |   9.889 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=19"]`             |   9.889 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=2"]`              |   6.289 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=20"]`             |   9.889 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=21"]`             |   9.889 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=22"]`             |   8.889 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=23"]`             |   8.889 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "access, depth=24"]`             |  10.000 ns (5%) |         |   4 bytes (1%) |             |
| `["DEPTH", "access, depth=25"]`             |  10.000 ns (5%) |         |   4 bytes (1%) |             |
| `["DEPTH", "access, depth=26"]`             |  10.000 ns (5%) |         |   4 bytes (1%) |             |
| `["DEPTH", "access, depth=27"]`             |  10.000 ns (5%) |         |   4 bytes (1%) |             |
| `["DEPTH", "access, depth=28"]`             |  10.000 ns (5%) |         |   4 bytes (1%) |             |
| `["DEPTH", "access, depth=29"]`             |  10.000 ns (5%) |         |   4 bytes (1%) |             |
| `["DEPTH", "access, depth=3"]`              |   6.383 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=30"]`             |  10.000 ns (5%) |         |   4 bytes (1%) |             |
| `["DEPTH", "access, depth=31"]`             |   9.857 ns (5%) |         |   4 bytes (1%) |             |
| `["DEPTH", "access, depth=32"]`             |   9.857 ns (5%) |         |   4 bytes (1%) |             |
| `["DEPTH", "access, depth=4"]`              |   6.414 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=5"]`              |   6.398 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=6"]`              |   6.467 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=7"]`              |   6.566 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=8"]`              |   7.179 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=9"]`              |   8.900 ns (5%) |         |   3 bytes (1%) |             |
| `["DEPTH", "emtpyf, depth=1"]`              | 100.769 ns (5%) |         | 208 bytes (1%) |           7 |
| `["DEPTH", "emtpyf, depth=10"]`             |   1.131 μs (5%) |         |  2.03 KiB (1%) |          70 |
| `["DEPTH", "emtpyf, depth=11"]`             |   1.238 μs (5%) |         |  2.23 KiB (1%) |          77 |
| `["DEPTH", "emtpyf, depth=12"]`             |   1.364 μs (5%) |         |  2.44 KiB (1%) |          84 |
| `["DEPTH", "emtpyf, depth=13"]`             |   1.490 μs (5%) |         |  2.64 KiB (1%) |          91 |
| `["DEPTH", "emtpyf, depth=14"]`             |   1.606 μs (5%) |         |  2.84 KiB (1%) |          98 |
| `["DEPTH", "emtpyf, depth=15"]`             |   1.702 μs (5%) |         |  3.05 KiB (1%) |         105 |
| `["DEPTH", "emtpyf, depth=16"]`             |   1.854 μs (5%) |         |  3.25 KiB (1%) |         112 |
| `["DEPTH", "emtpyf, depth=17"]`             |   1.941 μs (5%) |         |  3.45 KiB (1%) |         119 |
| `["DEPTH", "emtpyf, depth=18"]`             |   2.084 μs (5%) |         |  3.66 KiB (1%) |         126 |
| `["DEPTH", "emtpyf, depth=19"]`             |   2.197 μs (5%) |         |  3.86 KiB (1%) |         133 |
| `["DEPTH", "emtpyf, depth=2"]`              | 199.693 ns (5%) |         | 416 bytes (1%) |          14 |
| `["DEPTH", "emtpyf, depth=20"]`             |   2.374 μs (5%) |         |  4.06 KiB (1%) |         140 |
| `["DEPTH", "emtpyf, depth=21"]`             |   2.456 μs (5%) |         |  4.27 KiB (1%) |         147 |
| `["DEPTH", "emtpyf, depth=22"]`             |   2.571 μs (5%) |         |  4.47 KiB (1%) |         154 |
| `["DEPTH", "emtpyf, depth=23"]`             |   2.748 μs (5%) |         |  4.67 KiB (1%) |         161 |
| `["DEPTH", "emtpyf, depth=24"]`             |   2.858 μs (5%) |         |  4.88 KiB (1%) |         168 |
| `["DEPTH", "emtpyf, depth=25"]`             |   2.964 μs (5%) |         |  5.08 KiB (1%) |         175 |
| `["DEPTH", "emtpyf, depth=26"]`             |   3.169 μs (5%) |         |  5.28 KiB (1%) |         182 |
| `["DEPTH", "emtpyf, depth=27"]`             |   3.265 μs (5%) |         |  5.48 KiB (1%) |         189 |
| `["DEPTH", "emtpyf, depth=28"]`             |   3.416 μs (5%) |         |  5.69 KiB (1%) |         196 |
| `["DEPTH", "emtpyf, depth=29"]`             |   3.511 μs (5%) |         |  5.89 KiB (1%) |         203 |
| `["DEPTH", "emtpyf, depth=3"]`              | 270.135 ns (5%) |         | 624 bytes (1%) |          21 |
| `["DEPTH", "emtpyf, depth=30"]`             |   3.576 μs (5%) |         |  6.09 KiB (1%) |         210 |
| `["DEPTH", "emtpyf, depth=31"]`             |   3.803 μs (5%) |         |  6.30 KiB (1%) |         217 |
| `["DEPTH", "emtpyf, depth=32"]`             |   3.922 μs (5%) |         |  6.50 KiB (1%) |         224 |
| `["DEPTH", "emtpyf, depth=4"]`              | 400.400 ns (5%) |         | 832 bytes (1%) |          28 |
| `["DEPTH", "emtpyf, depth=5"]`              | 510.529 ns (5%) |         |  1.02 KiB (1%) |          35 |
| `["DEPTH", "emtpyf, depth=6"]`              | 631.557 ns (5%) |         |  1.22 KiB (1%) |          42 |
| `["DEPTH", "emtpyf, depth=7"]`              | 756.514 ns (5%) |         |  1.42 KiB (1%) |          49 |
| `["DEPTH", "emtpyf, depth=8"]`              | 862.162 ns (5%) |         |  1.62 KiB (1%) |          56 |
| `["DEPTH", "emtpyf, depth=9"]`              | 986.000 ns (5%) |         |  1.83 KiB (1%) |          63 |
| `["DEPTH", "scope + access, depth=1"]`      | 160.000 ns (5%) |         | 240 bytes (1%) |           8 |
| `["DEPTH", "scope + access, depth=10"]`     |   1.210 μs (5%) |         |  2.06 KiB (1%) |          71 |
| `["DEPTH", "scope + access, depth=11"]`     |   1.300 μs (5%) |         |  2.27 KiB (1%) |          78 |
| `["DEPTH", "scope + access, depth=12"]`     |   1.450 μs (5%) |         |  2.47 KiB (1%) |          85 |
| `["DEPTH", "scope + access, depth=13"]`     |   1.620 μs (5%) |         |  2.67 KiB (1%) |          92 |
| `["DEPTH", "scope + access, depth=14"]`     |   1.780 μs (5%) |         |  2.88 KiB (1%) |          99 |
| `["DEPTH", "scope + access, depth=15"]`     |   1.730 μs (5%) |         |  3.08 KiB (1%) |         106 |
| `["DEPTH", "scope + access, depth=16"]`     |   2.010 μs (5%) |         |  3.28 KiB (1%) |         113 |
| `["DEPTH", "scope + access, depth=17"]`     |   1.940 μs (5%) |         |  3.48 KiB (1%) |         120 |
| `["DEPTH", "scope + access, depth=18"]`     |   2.031 μs (5%) |         |  3.69 KiB (1%) |         127 |
| `["DEPTH", "scope + access, depth=19"]`     |   2.290 μs (5%) |         |  3.89 KiB (1%) |         134 |
| `["DEPTH", "scope + access, depth=2"]`      | 260.000 ns (5%) |         | 448 bytes (1%) |          15 |
| `["DEPTH", "scope + access, depth=20"]`     |   2.390 μs (5%) |         |  4.09 KiB (1%) |         141 |
| `["DEPTH", "scope + access, depth=21"]`     |   2.560 μs (5%) |         |  4.30 KiB (1%) |         148 |
| `["DEPTH", "scope + access, depth=22"]`     |   2.590 μs (5%) |         |  4.50 KiB (1%) |         155 |
| `["DEPTH", "scope + access, depth=23"]`     |   2.700 μs (5%) |         |  4.70 KiB (1%) |         162 |
| `["DEPTH", "scope + access, depth=24"]`     |   3.070 μs (5%) |         |  4.91 KiB (1%) |         169 |
| `["DEPTH", "scope + access, depth=25"]`     |   2.900 μs (5%) |         |  5.11 KiB (1%) |         176 |
| `["DEPTH", "scope + access, depth=26"]`     |   3.189 μs (5%) |         |  5.31 KiB (1%) |         183 |
| `["DEPTH", "scope + access, depth=27"]`     |   3.330 μs (5%) |         |  5.52 KiB (1%) |         190 |
| `["DEPTH", "scope + access, depth=28"]`     |   3.230 μs (5%) |         |  5.72 KiB (1%) |         197 |
| `["DEPTH", "scope + access, depth=29"]`     |   3.560 μs (5%) |         |  5.92 KiB (1%) |         204 |
| `["DEPTH", "scope + access, depth=3"]`      | 340.000 ns (5%) |         | 656 bytes (1%) |          22 |
| `["DEPTH", "scope + access, depth=30"]`     |   3.549 μs (5%) |         |  6.12 KiB (1%) |         211 |
| `["DEPTH", "scope + access, depth=31"]`     |   3.520 μs (5%) |         |  6.33 KiB (1%) |         218 |
| `["DEPTH", "scope + access, depth=32"]`     |   3.740 μs (5%) |         |  6.53 KiB (1%) |         225 |
| `["DEPTH", "scope + access, depth=4"]`      | 489.000 ns (5%) |         | 864 bytes (1%) |          29 |
| `["DEPTH", "scope + access, depth=5"]`      | 629.000 ns (5%) |         |  1.05 KiB (1%) |          36 |
| `["DEPTH", "scope + access, depth=6"]`      | 709.000 ns (5%) |         |  1.25 KiB (1%) |          43 |
| `["DEPTH", "scope + access, depth=7"]`      | 850.000 ns (5%) |         |  1.45 KiB (1%) |          50 |
| `["DEPTH", "scope + access, depth=8"]`      | 980.000 ns (5%) |         |  1.66 KiB (1%) |          57 |
| `["DEPTH", "scope + access, depth=9"]`      |   1.090 μs (5%) |         |  1.86 KiB (1%) |          64 |

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
       #1-16  4049 MHz    1073246 s        282 s      40786 s   20789102 s       9632 s
  Memory: 125.69889831542969 GB (111108.69921875 MB free)
  Uptime: 141939.16 sec
  Load Avg:  2.18  1.66  1.53
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-15.0.7 (ORCJIT, znver2)
  Threads: 1 on 16 virtual cores
```