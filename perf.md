# Benchmark Report for */home/vchuravy/src/ScopedVariables*

## Job Properties
* Time of benchmark: 25 Aug 2023 - 22:45
* Package commit: 65e1c7
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
| `["BASIC", "scoped with assignment & ref"]` | 186.698 ns (5%) |         | 800 bytes (1%) |           9 |
| `["BASIC", "scoped with assignment"]`       | 166.818 ns (5%) |         | 800 bytes (1%) |           9 |
| `["BASIC", "scoped"]`                       |   1.249 ns (5%) |         |                |             |
| `["BASIC", "unscoped"]`                     |   4.469 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=1"]`          |   9.540 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=1024"]`       |  12.900 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=128"]`        |   9.547 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=16"]`         |   9.659 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=2"]`          |   9.540 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=2048"]`       |  13.333 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=256"]`        |   9.598 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=32"]`         |   9.528 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=4"]`          |   9.529 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=4096"]`       |  15.571 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=512"]`        |   9.688 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=64"]`         |  11.871 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=8"]`          |   9.530 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=1"]`              |  10.400 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=10"]`             |   9.530 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=11"]`             |   9.530 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=12"]`             |   9.521 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=13"]`             |   9.659 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=14"]`             |   9.659 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=15"]`             |   9.659 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=16"]`             |   9.659 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=17"]`             |   9.659 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=18"]`             |   9.899 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=19"]`             |   9.519 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=2"]`              |   9.520 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=20"]`             |   9.539 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=21"]`             |   9.539 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=22"]`             |   9.659 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=23"]`             |   9.659 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=24"]`             |   9.529 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=25"]`             |   9.538 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=26"]`             |   9.658 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=27"]`             |   9.538 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=28"]`             |   9.548 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=29"]`             |   9.538 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=3"]`              |   9.530 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=30"]`             |   9.659 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=31"]`             |   9.528 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=32"]`             |   9.657 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=33"]`             |   9.528 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=34"]`             |   9.528 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=35"]`             |   9.538 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=36"]`             |   9.658 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=37"]`             |   9.527 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=38"]`             |   9.658 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=39"]`             |   9.658 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=4"]`              |   9.660 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=40"]`             |   9.657 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=41"]`             |   9.527 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=42"]`             |  10.645 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=43"]`             |   9.657 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=44"]`             |   9.657 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=45"]`             |   9.526 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=46"]`             |   9.526 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=47"]`             |   9.656 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=48"]`             |   9.656 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=49"]`             |   9.657 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=5"]`              |   9.530 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=50"]`             |   9.657 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=51"]`             |   9.657 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=52"]`             |   9.525 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=53"]`             |   9.525 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=54"]`             |   9.524 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=55"]`             |   9.656 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=56"]`             |   9.655 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=57"]`             |   9.534 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=58"]`             |   9.544 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=59"]`             |   9.533 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=6"]`              |   9.520 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=60"]`             |   9.655 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=61"]`             |  12.122 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=62"]`             |   9.522 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=63"]`             |   9.533 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=64"]`             |   9.532 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=7"]`              |   9.660 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=8"]`              |   9.529 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=9"]`              |   9.520 ns (5%) |         |                |             |
| `["DEPTH", "emtpyf, depth=1"]`              | 137.676 ns (5%) |         | 480 bytes (1%) |           8 |
| `["DEPTH", "emtpyf, depth=10"]`             |   1.621 μs (5%) |         |  4.69 KiB (1%) |          80 |
| `["DEPTH", "emtpyf, depth=11"]`             |   1.771 μs (5%) |         |  5.16 KiB (1%) |          88 |
| `["DEPTH", "emtpyf, depth=12"]`             |   1.930 μs (5%) |         |  5.62 KiB (1%) |          96 |
| `["DEPTH", "emtpyf, depth=13"]`             |   2.099 μs (5%) |         |  6.09 KiB (1%) |         104 |
| `["DEPTH", "emtpyf, depth=14"]`             |   2.291 μs (5%) |         |  6.56 KiB (1%) |         112 |
| `["DEPTH", "emtpyf, depth=15"]`             |   2.459 μs (5%) |         |  7.03 KiB (1%) |         120 |
| `["DEPTH", "emtpyf, depth=16"]`             |   2.610 μs (5%) |         |  7.50 KiB (1%) |         128 |
| `["DEPTH", "emtpyf, depth=17"]`             |   2.797 μs (5%) |         |  7.97 KiB (1%) |         136 |
| `["DEPTH", "emtpyf, depth=18"]`             |   3.010 μs (5%) |         |  8.44 KiB (1%) |         144 |
| `["DEPTH", "emtpyf, depth=19"]`             |   3.139 μs (5%) |         |  8.91 KiB (1%) |         152 |
| `["DEPTH", "emtpyf, depth=2"]`              | 276.133 ns (5%) |         | 960 bytes (1%) |          16 |
| `["DEPTH", "emtpyf, depth=20"]`             |   3.346 μs (5%) |         |  9.38 KiB (1%) |         160 |
| `["DEPTH", "emtpyf, depth=21"]`             |   3.521 μs (5%) |         |  9.84 KiB (1%) |         168 |
| `["DEPTH", "emtpyf, depth=22"]`             |   3.691 μs (5%) |         | 10.31 KiB (1%) |         176 |
| `["DEPTH", "emtpyf, depth=23"]`             |   3.854 μs (5%) |         | 10.78 KiB (1%) |         184 |
| `["DEPTH", "emtpyf, depth=24"]`             |   4.036 μs (5%) |         | 11.25 KiB (1%) |         192 |
| `["DEPTH", "emtpyf, depth=25"]`             |   4.179 μs (5%) |         | 11.72 KiB (1%) |         200 |
| `["DEPTH", "emtpyf, depth=26"]`             |   4.412 μs (5%) |         | 12.19 KiB (1%) |         208 |
| `["DEPTH", "emtpyf, depth=27"]`             |   4.570 μs (5%) |         | 12.66 KiB (1%) |         216 |
| `["DEPTH", "emtpyf, depth=28"]`             |   4.721 μs (5%) |         | 13.12 KiB (1%) |         224 |
| `["DEPTH", "emtpyf, depth=29"]`             |   4.931 μs (5%) |         | 13.59 KiB (1%) |         232 |
| `["DEPTH", "emtpyf, depth=3"]`              | 424.109 ns (5%) |         |  1.41 KiB (1%) |          24 |
| `["DEPTH", "emtpyf, depth=30"]`             |   5.099 μs (5%) |         | 14.06 KiB (1%) |         240 |
| `["DEPTH", "emtpyf, depth=31"]`             |   5.305 μs (5%) |         | 14.53 KiB (1%) |         248 |
| `["DEPTH", "emtpyf, depth=32"]`             |   5.425 μs (5%) |         | 15.00 KiB (1%) |         256 |
| `["DEPTH", "emtpyf, depth=33"]`             |   5.621 μs (5%) |         | 15.47 KiB (1%) |         264 |
| `["DEPTH", "emtpyf, depth=34"]`             |   5.793 μs (5%) |         | 15.94 KiB (1%) |         272 |
| `["DEPTH", "emtpyf, depth=35"]`             |   6.050 μs (5%) |         | 16.41 KiB (1%) |         280 |
| `["DEPTH", "emtpyf, depth=36"]`             |   6.168 μs (5%) |         | 16.88 KiB (1%) |         288 |
| `["DEPTH", "emtpyf, depth=37"]`             |   6.297 μs (5%) |         | 17.34 KiB (1%) |         296 |
| `["DEPTH", "emtpyf, depth=38"]`             |   6.480 μs (5%) |         | 17.81 KiB (1%) |         304 |
| `["DEPTH", "emtpyf, depth=39"]`             |   6.690 μs (5%) |         | 18.28 KiB (1%) |         312 |
| `["DEPTH", "emtpyf, depth=4"]`              | 587.909 ns (5%) |         |  1.88 KiB (1%) |          32 |
| `["DEPTH", "emtpyf, depth=40"]`             |   6.864 μs (5%) |         | 18.75 KiB (1%) |         320 |
| `["DEPTH", "emtpyf, depth=41"]`             |   7.031 μs (5%) |         | 19.22 KiB (1%) |         328 |
| `["DEPTH", "emtpyf, depth=42"]`             |   7.213 μs (5%) |         | 19.69 KiB (1%) |         336 |
| `["DEPTH", "emtpyf, depth=43"]`             |   7.346 μs (5%) |         | 20.16 KiB (1%) |         344 |
| `["DEPTH", "emtpyf, depth=44"]`             |   7.591 μs (5%) |         | 20.62 KiB (1%) |         352 |
| `["DEPTH", "emtpyf, depth=45"]`             |   7.825 μs (5%) |         | 21.09 KiB (1%) |         360 |
| `["DEPTH", "emtpyf, depth=46"]`             |   7.968 μs (5%) |         | 21.56 KiB (1%) |         368 |
| `["DEPTH", "emtpyf, depth=47"]`             |   8.138 μs (5%) |         | 22.03 KiB (1%) |         376 |
| `["DEPTH", "emtpyf, depth=48"]`             |   8.182 μs (5%) |         | 22.50 KiB (1%) |         384 |
| `["DEPTH", "emtpyf, depth=49"]`             |   8.462 μs (5%) |         | 22.97 KiB (1%) |         392 |
| `["DEPTH", "emtpyf, depth=5"]`              | 753.687 ns (5%) |         |  2.34 KiB (1%) |          40 |
| `["DEPTH", "emtpyf, depth=50"]`             |   8.739 μs (5%) |         | 23.44 KiB (1%) |         400 |
| `["DEPTH", "emtpyf, depth=51"]`             |   8.757 μs (5%) |         | 23.91 KiB (1%) |         408 |
| `["DEPTH", "emtpyf, depth=52"]`             |   8.925 μs (5%) |         | 24.38 KiB (1%) |         416 |
| `["DEPTH", "emtpyf, depth=53"]`             |   9.076 μs (5%) |         | 24.84 KiB (1%) |         424 |
| `["DEPTH", "emtpyf, depth=54"]`             |   9.232 μs (5%) |         | 25.31 KiB (1%) |         432 |
| `["DEPTH", "emtpyf, depth=55"]`             |   9.326 μs (5%) |         | 25.78 KiB (1%) |         440 |
| `["DEPTH", "emtpyf, depth=56"]`             |   9.642 μs (5%) |         | 26.25 KiB (1%) |         448 |
| `["DEPTH", "emtpyf, depth=57"]`             |   9.878 μs (5%) |         | 26.72 KiB (1%) |         456 |
| `["DEPTH", "emtpyf, depth=58"]`             |   9.944 μs (5%) |         | 27.19 KiB (1%) |         464 |
| `["DEPTH", "emtpyf, depth=59"]`             |  10.126 μs (5%) |         | 27.66 KiB (1%) |         472 |
| `["DEPTH", "emtpyf, depth=6"]`              | 933.439 ns (5%) |         |  2.81 KiB (1%) |          48 |
| `["DEPTH", "emtpyf, depth=60"]`             |  10.382 μs (5%) |         | 28.12 KiB (1%) |         480 |
| `["DEPTH", "emtpyf, depth=61"]`             |  10.592 μs (5%) |         | 28.59 KiB (1%) |         488 |
| `["DEPTH", "emtpyf, depth=62"]`             |  10.790 μs (5%) |         | 29.06 KiB (1%) |         496 |
| `["DEPTH", "emtpyf, depth=63"]`             |  10.734 μs (5%) |         | 29.53 KiB (1%) |         504 |
| `["DEPTH", "emtpyf, depth=64"]`             |  11.035 μs (5%) |         | 30.00 KiB (1%) |         512 |
| `["DEPTH", "emtpyf, depth=7"]`              |   1.119 μs (5%) |         |  3.28 KiB (1%) |          56 |
| `["DEPTH", "emtpyf, depth=8"]`              |   1.283 μs (5%) |         |  3.75 KiB (1%) |          64 |
| `["DEPTH", "emtpyf, depth=9"]`              |   1.431 μs (5%) |         |  4.22 KiB (1%) |          72 |
| `["DEPTH", "scope + access, depth=1"]`      | 155.439 ns (5%) |         | 480 bytes (1%) |           8 |
| `["DEPTH", "scope + access, depth=10"]`     |   1.671 μs (5%) |         |  4.69 KiB (1%) |          80 |
| `["DEPTH", "scope + access, depth=11"]`     |   1.811 μs (5%) |         |  5.16 KiB (1%) |          88 |
| `["DEPTH", "scope + access, depth=12"]`     |   2.081 μs (5%) |         |  5.62 KiB (1%) |          96 |
| `["DEPTH", "scope + access, depth=13"]`     |   2.176 μs (5%) |         |  6.09 KiB (1%) |         104 |
| `["DEPTH", "scope + access, depth=14"]`     |   2.446 μs (5%) |         |  6.56 KiB (1%) |         112 |
| `["DEPTH", "scope + access, depth=15"]`     |   2.592 μs (5%) |         |  7.03 KiB (1%) |         120 |
| `["DEPTH", "scope + access, depth=16"]`     |   2.655 μs (5%) |         |  7.50 KiB (1%) |         128 |
| `["DEPTH", "scope + access, depth=17"]`     |   2.865 μs (5%) |         |  7.97 KiB (1%) |         136 |
| `["DEPTH", "scope + access, depth=18"]`     |   3.168 μs (5%) |         |  8.44 KiB (1%) |         144 |
| `["DEPTH", "scope + access, depth=19"]`     |   3.270 μs (5%) |         |  8.91 KiB (1%) |         152 |
| `["DEPTH", "scope + access, depth=2"]`      | 292.843 ns (5%) |         | 960 bytes (1%) |          16 |
| `["DEPTH", "scope + access, depth=20"]`     |   3.472 μs (5%) |         |  9.38 KiB (1%) |         160 |
| `["DEPTH", "scope + access, depth=21"]`     |   3.560 μs (5%) |         |  9.84 KiB (1%) |         168 |
| `["DEPTH", "scope + access, depth=22"]`     |   3.716 μs (5%) |         | 10.31 KiB (1%) |         176 |
| `["DEPTH", "scope + access, depth=23"]`     |   3.830 μs (5%) |         | 10.78 KiB (1%) |         184 |
| `["DEPTH", "scope + access, depth=24"]`     |   4.100 μs (5%) |         | 11.25 KiB (1%) |         192 |
| `["DEPTH", "scope + access, depth=25"]`     |   4.127 μs (5%) |         | 11.72 KiB (1%) |         200 |
| `["DEPTH", "scope + access, depth=26"]`     |   4.410 μs (5%) |         | 12.19 KiB (1%) |         208 |
| `["DEPTH", "scope + access, depth=27"]`     |   4.562 μs (5%) |         | 12.66 KiB (1%) |         216 |
| `["DEPTH", "scope + access, depth=28"]`     |   4.755 μs (5%) |         | 13.12 KiB (1%) |         224 |
| `["DEPTH", "scope + access, depth=29"]`     |   5.029 μs (5%) |         | 13.59 KiB (1%) |         232 |
| `["DEPTH", "scope + access, depth=3"]`      | 433.887 ns (5%) |         |  1.41 KiB (1%) |          24 |
| `["DEPTH", "scope + access, depth=30"]`     |   5.164 μs (5%) |         | 14.06 KiB (1%) |         240 |
| `["DEPTH", "scope + access, depth=31"]`     |   5.287 μs (5%) |         | 14.53 KiB (1%) |         248 |
| `["DEPTH", "scope + access, depth=32"]`     |   5.707 μs (5%) |         | 15.00 KiB (1%) |         256 |
| `["DEPTH", "scope + access, depth=33"]`     |   5.875 μs (5%) |         | 15.47 KiB (1%) |         264 |
| `["DEPTH", "scope + access, depth=34"]`     |   6.236 μs (5%) |         | 15.94 KiB (1%) |         272 |
| `["DEPTH", "scope + access, depth=35"]`     |   6.084 μs (5%) |         | 16.41 KiB (1%) |         280 |
| `["DEPTH", "scope + access, depth=36"]`     |   6.225 μs (5%) |         | 16.88 KiB (1%) |         288 |
| `["DEPTH", "scope + access, depth=37"]`     |   6.343 μs (5%) |         | 17.34 KiB (1%) |         296 |
| `["DEPTH", "scope + access, depth=38"]`     |   6.677 μs (5%) |         | 17.81 KiB (1%) |         304 |
| `["DEPTH", "scope + access, depth=39"]`     |   6.830 μs (5%) |         | 18.28 KiB (1%) |         312 |
| `["DEPTH", "scope + access, depth=4"]`      | 621.558 ns (5%) |         |  1.88 KiB (1%) |          32 |
| `["DEPTH", "scope + access, depth=40"]`     |   7.096 μs (5%) |         | 18.75 KiB (1%) |         320 |
| `["DEPTH", "scope + access, depth=41"]`     |   7.119 μs (5%) |         | 19.22 KiB (1%) |         328 |
| `["DEPTH", "scope + access, depth=42"]`     |   7.389 μs (5%) |         | 19.69 KiB (1%) |         336 |
| `["DEPTH", "scope + access, depth=43"]`     |   7.269 μs (5%) |         | 20.16 KiB (1%) |         344 |
| `["DEPTH", "scope + access, depth=44"]`     |   7.820 μs (5%) |         | 20.62 KiB (1%) |         352 |
| `["DEPTH", "scope + access, depth=45"]`     |   8.126 μs (5%) |         | 21.09 KiB (1%) |         360 |
| `["DEPTH", "scope + access, depth=46"]`     |   8.113 μs (5%) |         | 21.56 KiB (1%) |         368 |
| `["DEPTH", "scope + access, depth=47"]`     |   8.320 μs (5%) |         | 22.03 KiB (1%) |         376 |
| `["DEPTH", "scope + access, depth=48"]`     |   8.243 μs (5%) |         | 22.50 KiB (1%) |         384 |
| `["DEPTH", "scope + access, depth=49"]`     |   8.505 μs (5%) |         | 22.97 KiB (1%) |         392 |
| `["DEPTH", "scope + access, depth=5"]`      | 832.222 ns (5%) |         |  2.34 KiB (1%) |          40 |
| `["DEPTH", "scope + access, depth=50"]`     |   8.700 μs (5%) |         | 23.44 KiB (1%) |         400 |
| `["DEPTH", "scope + access, depth=51"]`     |   9.057 μs (5%) |         | 23.91 KiB (1%) |         408 |
| `["DEPTH", "scope + access, depth=52"]`     |   9.278 μs (5%) |         | 24.38 KiB (1%) |         416 |
| `["DEPTH", "scope + access, depth=53"]`     |   8.912 μs (5%) |         | 24.84 KiB (1%) |         424 |
| `["DEPTH", "scope + access, depth=54"]`     |   9.160 μs (5%) |         | 25.31 KiB (1%) |         432 |
| `["DEPTH", "scope + access, depth=55"]`     |   9.720 μs (5%) |         | 25.78 KiB (1%) |         440 |
| `["DEPTH", "scope + access, depth=56"]`     |   9.664 μs (5%) |         | 26.25 KiB (1%) |         448 |
| `["DEPTH", "scope + access, depth=57"]`     |   9.842 μs (5%) |         | 26.72 KiB (1%) |         456 |
| `["DEPTH", "scope + access, depth=58"]`     |  10.225 μs (5%) |         | 27.19 KiB (1%) |         464 |
| `["DEPTH", "scope + access, depth=59"]`     |   9.925 μs (5%) |         | 27.66 KiB (1%) |         472 |
| `["DEPTH", "scope + access, depth=6"]`      | 983.829 ns (5%) |         |  2.81 KiB (1%) |          48 |
| `["DEPTH", "scope + access, depth=60"]`     |  10.570 μs (5%) |         | 28.12 KiB (1%) |         480 |
| `["DEPTH", "scope + access, depth=61"]`     |  10.700 μs (5%) |         | 28.59 KiB (1%) |         488 |
| `["DEPTH", "scope + access, depth=62"]`     |  10.803 μs (5%) |         | 29.06 KiB (1%) |         496 |
| `["DEPTH", "scope + access, depth=63"]`     |  11.100 μs (5%) |         | 29.53 KiB (1%) |         504 |
| `["DEPTH", "scope + access, depth=64"]`     |  11.172 μs (5%) |         | 30.00 KiB (1%) |         512 |
| `["DEPTH", "scope + access, depth=7"]`      |   1.137 μs (5%) |         |  3.28 KiB (1%) |          56 |
| `["DEPTH", "scope + access, depth=8"]`      |   1.318 μs (5%) |         |  3.75 KiB (1%) |          64 |
| `["DEPTH", "scope + access, depth=9"]`      |   1.455 μs (5%) |         |  4.22 KiB (1%) |          72 |
| `["WIDTH", "access 2^i, width=1"]`          |   9.549 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=1024"]`       |  15.000 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=128"]`        |   9.582 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=16"]`         |   9.659 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=2"]`          |   9.660 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=2048"]`       |  16.556 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=256"]`        |   9.969 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=32"]`         |   9.658 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=4"]`          |   9.540 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=4096"]`       |  18.429 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=512"]`        |  11.875 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=64"]`         |   9.673 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=8"]`          |   9.530 ns (5%) |         |                |             |

## Benchmark Group List
Here's a list of all the benchmark groups executed by this job:

- `["BASIC"]`
- `["DEPTH"]`
- `["WIDTH"]`

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
       #1-16  4047 MHz    1153063 s       1617 s      81485 s    2820098 s      18568 s
  Memory: 125.69889831542969 GB (81122.5859375 MB free)
  Uptime: 304656.37 sec
  Load Avg:  1.07  0.87  0.52
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-15.0.7 (ORCJIT, znver2)
  Threads: 1 on 16 virtual cores
```