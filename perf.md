# Benchmark Report for */home/vchuravy/src/ScopedVariables*

## Job Properties
* Time of benchmark: 18 Aug 2023 - 11:32
* Package commit: f51cd9
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
| `["BASIC", "scoped with assignment & ref"]` |  93.355 ns (5%) |         | 208 bytes (1%) |           7 |
| `["BASIC", "scoped with assignment"]`       |  88.448 ns (5%) |         | 208 bytes (1%) |           7 |
| `["BASIC", "scoped"]`                       |   1.249 ns (5%) |         |                |             |
| `["BASIC", "unscoped"]`                     |   4.380 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=1"]`              |   7.932 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=10"]`             |   6.508 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=11"]`             |   6.286 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=12"]`             |   6.298 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=13"]`             |   6.326 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=14"]`             |   6.581 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=15"]`             |   6.581 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=16"]`             |   6.667 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=17"]`             |   6.667 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=18"]`             |   6.682 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=19"]`             |   6.731 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=2"]`              |   6.347 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=20"]`             |   6.711 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=21"]`             |   6.745 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=22"]`             |   6.533 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=23"]`             |   6.717 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=24"]`             |   6.746 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=25"]`             |   6.531 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=26"]`             |   6.769 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=27"]`             |   6.782 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=28"]`             |   6.784 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=29"]`             |   6.786 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=3"]`              |   6.456 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=30"]`             |   6.811 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=31"]`             |   6.851 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=32"]`             |   6.893 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=4"]`              |   6.223 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=5"]`              |   6.467 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=6"]`              |   6.423 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=7"]`              |   6.478 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=8"]`              |   6.480 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=9"]`              |   6.481 ns (5%) |         |                |             |
| `["DEPTH", "emtpyf, depth=1"]`              |  89.303 ns (5%) |         | 208 bytes (1%) |           7 |
| `["DEPTH", "emtpyf, depth=10"]`             |   1.129 μs (5%) |         |  2.03 KiB (1%) |          70 |
| `["DEPTH", "emtpyf, depth=11"]`             |   1.207 μs (5%) |         |  2.23 KiB (1%) |          77 |
| `["DEPTH", "emtpyf, depth=12"]`             |   1.325 μs (5%) |         |  2.44 KiB (1%) |          84 |
| `["DEPTH", "emtpyf, depth=13"]`             |   1.468 μs (5%) |         |  2.64 KiB (1%) |          91 |
| `["DEPTH", "emtpyf, depth=14"]`             |   1.592 μs (5%) |         |  2.84 KiB (1%) |          98 |
| `["DEPTH", "emtpyf, depth=15"]`             |   1.681 μs (5%) |         |  3.05 KiB (1%) |         105 |
| `["DEPTH", "emtpyf, depth=16"]`             |   1.834 μs (5%) |         |  3.25 KiB (1%) |         112 |
| `["DEPTH", "emtpyf, depth=17"]`             |   1.927 μs (5%) |         |  3.45 KiB (1%) |         119 |
| `["DEPTH", "emtpyf, depth=18"]`             |   2.049 μs (5%) |         |  3.66 KiB (1%) |         126 |
| `["DEPTH", "emtpyf, depth=19"]`             |   2.169 μs (5%) |         |  3.86 KiB (1%) |         133 |
| `["DEPTH", "emtpyf, depth=2"]`              | 182.516 ns (5%) |         | 416 bytes (1%) |          14 |
| `["DEPTH", "emtpyf, depth=20"]`             |   2.327 μs (5%) |         |  4.06 KiB (1%) |         140 |
| `["DEPTH", "emtpyf, depth=21"]`             |   2.416 μs (5%) |         |  4.27 KiB (1%) |         147 |
| `["DEPTH", "emtpyf, depth=22"]`             |   2.531 μs (5%) |         |  4.47 KiB (1%) |         154 |
| `["DEPTH", "emtpyf, depth=23"]`             |   2.730 μs (5%) |         |  4.67 KiB (1%) |         161 |
| `["DEPTH", "emtpyf, depth=24"]`             |   2.782 μs (5%) |         |  4.88 KiB (1%) |         168 |
| `["DEPTH", "emtpyf, depth=25"]`             |   2.957 μs (5%) |         |  5.08 KiB (1%) |         175 |
| `["DEPTH", "emtpyf, depth=26"]`             |   3.129 μs (5%) |         |  5.28 KiB (1%) |         182 |
| `["DEPTH", "emtpyf, depth=27"]`             |   3.208 μs (5%) |         |  5.48 KiB (1%) |         189 |
| `["DEPTH", "emtpyf, depth=28"]`             |   3.389 μs (5%) |         |  5.69 KiB (1%) |         196 |
| `["DEPTH", "emtpyf, depth=29"]`             |   3.473 μs (5%) |         |  5.89 KiB (1%) |         203 |
| `["DEPTH", "emtpyf, depth=3"]`              | 262.217 ns (5%) |         | 624 bytes (1%) |          21 |
| `["DEPTH", "emtpyf, depth=30"]`             |   3.564 μs (5%) |         |  6.09 KiB (1%) |         210 |
| `["DEPTH", "emtpyf, depth=31"]`             |   3.751 μs (5%) |         |  6.30 KiB (1%) |         217 |
| `["DEPTH", "emtpyf, depth=32"]`             |   3.835 μs (5%) |         |  6.50 KiB (1%) |         224 |
| `["DEPTH", "emtpyf, depth=4"]`              | 380.226 ns (5%) |         | 832 bytes (1%) |          28 |
| `["DEPTH", "emtpyf, depth=5"]`              | 504.359 ns (5%) |         |  1.02 KiB (1%) |          35 |
| `["DEPTH", "emtpyf, depth=6"]`              | 639.500 ns (5%) |         |  1.22 KiB (1%) |          42 |
| `["DEPTH", "emtpyf, depth=7"]`              | 746.667 ns (5%) |         |  1.42 KiB (1%) |          49 |
| `["DEPTH", "emtpyf, depth=8"]`              | 849.412 ns (5%) |         |  1.62 KiB (1%) |          56 |
| `["DEPTH", "emtpyf, depth=9"]`              | 967.586 ns (5%) |         |  1.83 KiB (1%) |          63 |
| `["DEPTH", "scope + access, depth=1"]`      | 110.714 ns (5%) |         | 240 bytes (1%) |           8 |
| `["DEPTH", "scope + access, depth=10"]`     |   1.151 μs (5%) |         |  2.06 KiB (1%) |          71 |
| `["DEPTH", "scope + access, depth=11"]`     |   1.308 μs (5%) |         |  2.27 KiB (1%) |          78 |
| `["DEPTH", "scope + access, depth=12"]`     |   1.424 μs (5%) |         |  2.47 KiB (1%) |          85 |
| `["DEPTH", "scope + access, depth=13"]`     |   1.538 μs (5%) |         |  2.67 KiB (1%) |          92 |
| `["DEPTH", "scope + access, depth=14"]`     |   1.733 μs (5%) |         |  2.88 KiB (1%) |          99 |
| `["DEPTH", "scope + access, depth=15"]`     |   1.869 μs (5%) |         |  3.08 KiB (1%) |         106 |
| `["DEPTH", "scope + access, depth=16"]`     |   1.950 μs (5%) |         |  3.28 KiB (1%) |         113 |
| `["DEPTH", "scope + access, depth=17"]`     |   2.056 μs (5%) |         |  3.48 KiB (1%) |         120 |
| `["DEPTH", "scope + access, depth=18"]`     |   2.139 μs (5%) |         |  3.69 KiB (1%) |         127 |
| `["DEPTH", "scope + access, depth=19"]`     |   2.368 μs (5%) |         |  3.89 KiB (1%) |         134 |
| `["DEPTH", "scope + access, depth=2"]`      | 203.800 ns (5%) |         | 448 bytes (1%) |          15 |
| `["DEPTH", "scope + access, depth=20"]`     |   2.444 μs (5%) |         |  4.09 KiB (1%) |         141 |
| `["DEPTH", "scope + access, depth=21"]`     |   2.689 μs (5%) |         |  4.30 KiB (1%) |         148 |
| `["DEPTH", "scope + access, depth=22"]`     |   2.772 μs (5%) |         |  4.50 KiB (1%) |         155 |
| `["DEPTH", "scope + access, depth=23"]`     |   2.896 μs (5%) |         |  4.70 KiB (1%) |         162 |
| `["DEPTH", "scope + access, depth=24"]`     |   3.064 μs (5%) |         |  4.91 KiB (1%) |         169 |
| `["DEPTH", "scope + access, depth=25"]`     |   3.141 μs (5%) |         |  5.11 KiB (1%) |         176 |
| `["DEPTH", "scope + access, depth=26"]`     |   3.170 μs (5%) |         |  5.31 KiB (1%) |         183 |
| `["DEPTH", "scope + access, depth=27"]`     |   3.413 μs (5%) |         |  5.52 KiB (1%) |         190 |
| `["DEPTH", "scope + access, depth=28"]`     |   3.573 μs (5%) |         |  5.72 KiB (1%) |         197 |
| `["DEPTH", "scope + access, depth=29"]`     |   3.706 μs (5%) |         |  5.92 KiB (1%) |         204 |
| `["DEPTH", "scope + access, depth=3"]`      | 282.892 ns (5%) |         | 656 bytes (1%) |          22 |
| `["DEPTH", "scope + access, depth=30"]`     |   3.719 μs (5%) |         |  6.12 KiB (1%) |         211 |
| `["DEPTH", "scope + access, depth=31"]`     |   3.834 μs (5%) |         |  6.33 KiB (1%) |         218 |
| `["DEPTH", "scope + access, depth=32"]`     |   4.044 μs (5%) |         |  6.53 KiB (1%) |         225 |
| `["DEPTH", "scope + access, depth=4"]`      | 454.451 ns (5%) |         | 864 bytes (1%) |          29 |
| `["DEPTH", "scope + access, depth=5"]`      | 569.000 ns (5%) |         |  1.05 KiB (1%) |          36 |
| `["DEPTH", "scope + access, depth=6"]`      | 653.000 ns (5%) |         |  1.25 KiB (1%) |          43 |
| `["DEPTH", "scope + access, depth=7"]`      | 779.000 ns (5%) |         |  1.45 KiB (1%) |          50 |
| `["DEPTH", "scope + access, depth=8"]`      | 924.000 ns (5%) |         |  1.66 KiB (1%) |          57 |
| `["DEPTH", "scope + access, depth=9"]`      |   1.072 μs (5%) |         |  1.86 KiB (1%) |          64 |

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
       #1-16  4050 MHz    1085082 s        282 s      41546 s   20897081 s       9707 s
  Memory: 125.69889831542969 GB (111144.1171875 MB free)
  Uptime: 142694.21 sec
  Load Avg:  1.85  1.86  1.72
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-15.0.7 (ORCJIT, znver2)
  Threads: 1 on 16 virtual cores
```