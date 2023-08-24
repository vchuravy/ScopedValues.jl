# Benchmark Report for */home/vchuravy/src/ScopedVariables*

## Job Properties
* Time of benchmark: 24 Aug 2023 - 18:14
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
| `["BASIC", "scoped with assignment & ref"]` |  75.551 ns (5%) |         | 112 bytes (1%) |           4 |
| `["BASIC", "scoped with assignment"]`       |  74.602 ns (5%) |         | 112 bytes (1%) |           4 |
| `["BASIC", "scoped"]`                       |   1.268 ns (5%) |         |                |             |
| `["BASIC", "unscoped"]`                     |   4.399 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=1"]`              |   4.282 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=10"]`             |  22.877 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=11"]`             |  25.429 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=12"]`             |  27.387 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=13"]`             |  29.693 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=14"]`             |  31.946 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=15"]`             |  34.265 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=16"]`             |  38.866 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=17"]`             |  41.714 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=18"]`             |  44.204 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=19"]`             |  47.115 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=2"]`              |   7.531 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=20"]`             |  49.395 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=21"]`             |  52.426 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=22"]`             |  54.459 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=23"]`             |  56.313 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=24"]`             |  62.031 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=25"]`             |  60.474 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=26"]`             |  62.889 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=27"]`             |  66.122 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=28"]`             |  68.368 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=29"]`             |  70.513 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=3"]`              |   9.791 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=30"]`             |  78.812 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=31"]`             |  75.381 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=32"]`             |  89.478 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=4"]`              |  11.801 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=5"]`              |  12.727 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=6"]`              |  15.802 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=7"]`              |  17.058 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=8"]`              |  19.301 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=9"]`              |  20.939 ns (5%) |         |                |             |
| `["DEPTH", "emtpyf, depth=1"]`              |  81.754 ns (5%) |         | 128 bytes (1%) |           5 |
| `["DEPTH", "emtpyf, depth=10"]`             | 817.797 ns (5%) |         |  1.25 KiB (1%) |          50 |
| `["DEPTH", "emtpyf, depth=11"]`             | 882.281 ns (5%) |         |  1.38 KiB (1%) |          55 |
| `["DEPTH", "emtpyf, depth=12"]`             | 944.040 ns (5%) |         |  1.50 KiB (1%) |          60 |
| `["DEPTH", "emtpyf, depth=13"]`             |   1.080 μs (5%) |         |  1.62 KiB (1%) |          65 |
| `["DEPTH", "emtpyf, depth=14"]`             |   1.153 μs (5%) |         |  1.75 KiB (1%) |          70 |
| `["DEPTH", "emtpyf, depth=15"]`             |   1.189 μs (5%) |         |  1.88 KiB (1%) |          75 |
| `["DEPTH", "emtpyf, depth=16"]`             |   1.326 μs (5%) |         |  2.00 KiB (1%) |          80 |
| `["DEPTH", "emtpyf, depth=17"]`             |   1.363 μs (5%) |         |  2.12 KiB (1%) |          85 |
| `["DEPTH", "emtpyf, depth=18"]`             |   1.442 μs (5%) |         |  2.25 KiB (1%) |          90 |
| `["DEPTH", "emtpyf, depth=19"]`             |   1.520 μs (5%) |         |  2.38 KiB (1%) |          95 |
| `["DEPTH", "emtpyf, depth=2"]`              | 159.786 ns (5%) |         | 256 bytes (1%) |          10 |
| `["DEPTH", "emtpyf, depth=20"]`             |   1.637 μs (5%) |         |  2.50 KiB (1%) |         100 |
| `["DEPTH", "emtpyf, depth=21"]`             |   1.650 μs (5%) |         |  2.62 KiB (1%) |         105 |
| `["DEPTH", "emtpyf, depth=22"]`             |   1.716 μs (5%) |         |  2.75 KiB (1%) |         110 |
| `["DEPTH", "emtpyf, depth=23"]`             |   1.878 μs (5%) |         |  2.88 KiB (1%) |         115 |
| `["DEPTH", "emtpyf, depth=24"]`             |   1.903 μs (5%) |         |  3.00 KiB (1%) |         120 |
| `["DEPTH", "emtpyf, depth=25"]`             |   2.019 μs (5%) |         |  3.12 KiB (1%) |         125 |
| `["DEPTH", "emtpyf, depth=26"]`             |   2.120 μs (5%) |         |  3.25 KiB (1%) |         130 |
| `["DEPTH", "emtpyf, depth=27"]`             |   2.177 μs (5%) |         |  3.38 KiB (1%) |         135 |
| `["DEPTH", "emtpyf, depth=28"]`             |   2.313 μs (5%) |         |  3.50 KiB (1%) |         140 |
| `["DEPTH", "emtpyf, depth=29"]`             |   2.389 μs (5%) |         |  3.62 KiB (1%) |         145 |
| `["DEPTH", "emtpyf, depth=3"]`              | 245.156 ns (5%) |         | 384 bytes (1%) |          15 |
| `["DEPTH", "emtpyf, depth=30"]`             |   2.419 μs (5%) |         |  3.75 KiB (1%) |         150 |
| `["DEPTH", "emtpyf, depth=31"]`             |   2.573 μs (5%) |         |  3.88 KiB (1%) |         155 |
| `["DEPTH", "emtpyf, depth=32"]`             |   2.650 μs (5%) |         |  4.00 KiB (1%) |         160 |
| `["DEPTH", "emtpyf, depth=4"]`              | 340.785 ns (5%) |         | 512 bytes (1%) |          20 |
| `["DEPTH", "emtpyf, depth=5"]`              | 426.879 ns (5%) |         | 640 bytes (1%) |          25 |
| `["DEPTH", "emtpyf, depth=6"]`              | 508.067 ns (5%) |         | 768 bytes (1%) |          30 |
| `["DEPTH", "emtpyf, depth=7"]`              | 563.605 ns (5%) |         | 896 bytes (1%) |          35 |
| `["DEPTH", "emtpyf, depth=8"]`              | 649.516 ns (5%) |         |  1.00 KiB (1%) |          40 |
| `["DEPTH", "emtpyf, depth=9"]`              | 723.722 ns (5%) |         |  1.12 KiB (1%) |          45 |
| `["DEPTH", "scope + access, depth=1"]`      | 178.890 ns (5%) |         | 128 bytes (1%) |           5 |
| `["DEPTH", "scope + access, depth=10"]`     | 907.121 ns (5%) |         |  1.25 KiB (1%) |          50 |
| `["DEPTH", "scope + access, depth=11"]`     |   1.096 μs (5%) |         |  1.38 KiB (1%) |          55 |
| `["DEPTH", "scope + access, depth=12"]`     |   1.124 μs (5%) |         |  1.50 KiB (1%) |          60 |
| `["DEPTH", "scope + access, depth=13"]`     |   1.179 μs (5%) |         |  1.62 KiB (1%) |          65 |
| `["DEPTH", "scope + access, depth=14"]`     |   1.459 μs (5%) |         |  1.75 KiB (1%) |          70 |
| `["DEPTH", "scope + access, depth=15"]`     |   1.352 μs (5%) |         |  1.88 KiB (1%) |          75 |
| `["DEPTH", "scope + access, depth=16"]`     |   1.555 μs (5%) |         |  2.00 KiB (1%) |          80 |
| `["DEPTH", "scope + access, depth=17"]`     |   1.627 μs (5%) |         |  2.12 KiB (1%) |          85 |
| `["DEPTH", "scope + access, depth=18"]`     |   1.655 μs (5%) |         |  2.25 KiB (1%) |          90 |
| `["DEPTH", "scope + access, depth=19"]`     |   1.805 μs (5%) |         |  2.38 KiB (1%) |          95 |
| `["DEPTH", "scope + access, depth=2"]`      | 191.756 ns (5%) |         | 256 bytes (1%) |          10 |
| `["DEPTH", "scope + access, depth=20"]`     |   1.925 μs (5%) |         |  2.50 KiB (1%) |         100 |
| `["DEPTH", "scope + access, depth=21"]`     |   2.047 μs (5%) |         |  2.62 KiB (1%) |         105 |
| `["DEPTH", "scope + access, depth=22"]`     |   2.063 μs (5%) |         |  2.75 KiB (1%) |         110 |
| `["DEPTH", "scope + access, depth=23"]`     |   2.185 μs (5%) |         |  2.88 KiB (1%) |         115 |
| `["DEPTH", "scope + access, depth=24"]`     |   2.288 μs (5%) |         |  3.00 KiB (1%) |         120 |
| `["DEPTH", "scope + access, depth=25"]`     |   2.828 μs (5%) |         |  3.12 KiB (1%) |         125 |
| `["DEPTH", "scope + access, depth=26"]`     |   2.505 μs (5%) |         |  3.25 KiB (1%) |         130 |
| `["DEPTH", "scope + access, depth=27"]`     |   2.642 μs (5%) |         |  3.38 KiB (1%) |         135 |
| `["DEPTH", "scope + access, depth=28"]`     |   2.809 μs (5%) |         |  3.50 KiB (1%) |         140 |
| `["DEPTH", "scope + access, depth=29"]`     |   2.892 μs (5%) |         |  3.62 KiB (1%) |         145 |
| `["DEPTH", "scope + access, depth=3"]`      | 335.853 ns (5%) |         | 384 bytes (1%) |          15 |
| `["DEPTH", "scope + access, depth=30"]`     |   2.973 μs (5%) |         |  3.75 KiB (1%) |         150 |
| `["DEPTH", "scope + access, depth=31"]`     |   3.015 μs (5%) |         |  3.88 KiB (1%) |         155 |
| `["DEPTH", "scope + access, depth=32"]`     |   3.151 μs (5%) |         |  4.00 KiB (1%) |         160 |
| `["DEPTH", "scope + access, depth=4"]`      | 381.936 ns (5%) |         | 512 bytes (1%) |          20 |
| `["DEPTH", "scope + access, depth=5"]`      | 579.090 ns (5%) |         | 640 bytes (1%) |          25 |
| `["DEPTH", "scope + access, depth=6"]`      | 654.612 ns (5%) |         | 768 bytes (1%) |          30 |
| `["DEPTH", "scope + access, depth=7"]`      | 724.135 ns (5%) |         | 896 bytes (1%) |          35 |
| `["DEPTH", "scope + access, depth=8"]`      | 746.733 ns (5%) |         |  1.00 KiB (1%) |          40 |
| `["DEPTH", "scope + access, depth=9"]`      | 830.096 ns (5%) |         |  1.12 KiB (1%) |          45 |

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
       #1  3799 MHz      12616 s         39 s       2660 s      50817 s       1525 s
       #2  3800 MHz      11737 s         50 s       2505 s      53029 s        289 s
       #3  3799 MHz      13360 s         42 s       2698 s      51296 s        265 s
       #4  3800 MHz      10704 s         32 s       2518 s      53844 s        465 s
  Memory: 15.38076400756836 GB (5243.88671875 MB free)
  Uptime: 27595.11 sec
  Load Avg:  0.95  0.91  0.95
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-15.0.7 (ORCJIT, skylake)
  Threads: 1 on 4 virtual cores
```