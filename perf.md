# Benchmark Report for */home/vchuravy/src/ScopedVariables*

## Job Properties
* Time of benchmark: 25 Aug 2023 - 21:38
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
| `["BASIC", "scoped with assignment & ref"]` |  73.992 ns (5%) |         | 112 bytes (1%) |           4 |
| `["BASIC", "scoped with assignment"]`       |  77.758 ns (5%) |         | 112 bytes (1%) |           4 |
| `["BASIC", "scoped"]`                       |   1.249 ns (5%) |         |                |             |
| `["BASIC", "unscoped"]`                     |   3.469 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=1"]`          |   2.980 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=1024"]`       |   1.034 μs (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=128"]`        | 138.792 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=16"]`         |  10.631 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=2"]`          |   3.720 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=2048"]`       |   2.055 μs (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=256"]`        | 265.488 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=32"]`         |  25.954 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=4"]`          |   3.720 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=4096"]`       |   4.101 μs (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=512"]`        | 518.125 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=64"]`         |  57.548 ns (5%) |         |                |             |
| `["DEPTH", "access 2^i, depth=8"]`          |   5.700 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=1"]`              |   3.469 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=10"]`             |   6.940 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=11"]`             |   7.728 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=12"]`             |   8.357 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=13"]`             |   8.789 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=14"]`             |   9.650 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=15"]`             |  10.140 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=16"]`             |  10.640 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=17"]`             |  11.381 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=18"]`             |  12.533 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=19"]`             |  13.347 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=2"]`              |   3.480 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=20"]`             |  14.338 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=21"]`             |  15.080 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=22"]`             |  16.072 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=23"]`             |  17.064 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=24"]`             |  18.044 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=25"]`             |  19.037 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=26"]`             |  20.261 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=27"]`             |  21.013 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=28"]`             |  21.998 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=29"]`             |  22.982 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=3"]`              |   3.469 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=30"]`             |  24.177 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=31"]`             |  24.960 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=32"]`             |  26.171 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=33"]`             |  26.935 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=34"]`             |  27.930 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=35"]`             |  28.915 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=36"]`             |  29.899 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=37"]`             |  30.885 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=38"]`             |  31.881 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=39"]`             |  32.867 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=4"]`              |   3.969 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=40"]`             |  33.857 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=41"]`             |  34.844 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=42"]`             |  35.827 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=43"]`             |  36.815 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=44"]`             |  38.004 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=45"]`             |  38.789 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=46"]`             |  39.778 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=47"]`             |  40.767 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=48"]`             |  41.756 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=49"]`             |  42.737 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=5"]`              |   4.460 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=50"]`             |  43.969 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=51"]`             |  44.838 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=52"]`             |  45.703 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=53"]`             |  46.936 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=54"]`             |  47.672 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=55"]`             |  48.785 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=56"]`             |  49.656 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=57"]`             |  50.638 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=58"]`             |  51.624 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=59"]`             |  52.617 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=6"]`              |   4.709 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=60"]`             |  53.848 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=61"]`             |  54.599 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=62"]`             |  55.579 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=63"]`             |  56.565 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=64"]`             |  57.803 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=7"]`              |   4.960 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=8"]`              |   5.700 ns (5%) |         |                |             |
| `["DEPTH", "access, depth=9"]`              |   6.080 ns (5%) |         |                |             |
| `["DEPTH", "emtpyf, depth=1"]`              |  76.694 ns (5%) |         | 128 bytes (1%) |           5 |
| `["DEPTH", "emtpyf, depth=10"]`             | 971.875 ns (5%) |         |  1.25 KiB (1%) |          50 |
| `["DEPTH", "emtpyf, depth=11"]`             |   1.097 μs (5%) |         |  1.38 KiB (1%) |          55 |
| `["DEPTH", "emtpyf, depth=12"]`             |   1.177 μs (5%) |         |  1.50 KiB (1%) |          60 |
| `["DEPTH", "emtpyf, depth=13"]`             |   1.280 μs (5%) |         |  1.62 KiB (1%) |          65 |
| `["DEPTH", "emtpyf, depth=14"]`             |   1.425 μs (5%) |         |  1.75 KiB (1%) |          70 |
| `["DEPTH", "emtpyf, depth=15"]`             |   1.545 μs (5%) |         |  1.88 KiB (1%) |          75 |
| `["DEPTH", "emtpyf, depth=16"]`             |   1.622 μs (5%) |         |  2.00 KiB (1%) |          80 |
| `["DEPTH", "emtpyf, depth=17"]`             |   1.747 μs (5%) |         |  2.12 KiB (1%) |          85 |
| `["DEPTH", "emtpyf, depth=18"]`             |   1.830 μs (5%) |         |  2.25 KiB (1%) |          90 |
| `["DEPTH", "emtpyf, depth=19"]`             |   1.934 μs (5%) |         |  2.38 KiB (1%) |          95 |
| `["DEPTH", "emtpyf, depth=2"]`              | 156.255 ns (5%) |         | 256 bytes (1%) |          10 |
| `["DEPTH", "emtpyf, depth=20"]`             |   2.043 μs (5%) |         |  2.50 KiB (1%) |         100 |
| `["DEPTH", "emtpyf, depth=21"]`             |   2.204 μs (5%) |         |  2.62 KiB (1%) |         105 |
| `["DEPTH", "emtpyf, depth=22"]`             |   2.248 μs (5%) |         |  2.75 KiB (1%) |         110 |
| `["DEPTH", "emtpyf, depth=23"]`             |   2.438 μs (5%) |         |  2.88 KiB (1%) |         115 |
| `["DEPTH", "emtpyf, depth=24"]`             |   2.552 μs (5%) |         |  3.00 KiB (1%) |         120 |
| `["DEPTH", "emtpyf, depth=25"]`             |   2.672 μs (5%) |         |  3.12 KiB (1%) |         125 |
| `["DEPTH", "emtpyf, depth=26"]`             |   2.682 μs (5%) |         |  3.25 KiB (1%) |         130 |
| `["DEPTH", "emtpyf, depth=27"]`             |   2.897 μs (5%) |         |  3.38 KiB (1%) |         135 |
| `["DEPTH", "emtpyf, depth=28"]`             |   3.022 μs (5%) |         |  3.50 KiB (1%) |         140 |
| `["DEPTH", "emtpyf, depth=29"]`             |   3.160 μs (5%) |         |  3.62 KiB (1%) |         145 |
| `["DEPTH", "emtpyf, depth=3"]`              | 224.022 ns (5%) |         | 384 bytes (1%) |          15 |
| `["DEPTH", "emtpyf, depth=30"]`             |   3.125 μs (5%) |         |  3.75 KiB (1%) |         150 |
| `["DEPTH", "emtpyf, depth=31"]`             |   3.360 μs (5%) |         |  3.88 KiB (1%) |         155 |
| `["DEPTH", "emtpyf, depth=32"]`             |   3.402 μs (5%) |         |  4.00 KiB (1%) |         160 |
| `["DEPTH", "emtpyf, depth=33"]`             |   3.578 μs (5%) |         |  4.12 KiB (1%) |         165 |
| `["DEPTH", "emtpyf, depth=34"]`             |   3.770 μs (5%) |         |  4.25 KiB (1%) |         170 |
| `["DEPTH", "emtpyf, depth=35"]`             |   3.739 μs (5%) |         |  4.38 KiB (1%) |         175 |
| `["DEPTH", "emtpyf, depth=36"]`             |   4.021 μs (5%) |         |  4.50 KiB (1%) |         180 |
| `["DEPTH", "emtpyf, depth=37"]`             |   4.084 μs (5%) |         |  4.62 KiB (1%) |         185 |
| `["DEPTH", "emtpyf, depth=38"]`             |   4.214 μs (5%) |         |  4.75 KiB (1%) |         190 |
| `["DEPTH", "emtpyf, depth=39"]`             |   4.393 μs (5%) |         |  4.88 KiB (1%) |         195 |
| `["DEPTH", "emtpyf, depth=4"]`              | 335.318 ns (5%) |         | 512 bytes (1%) |          20 |
| `["DEPTH", "emtpyf, depth=40"]`             |   4.397 μs (5%) |         |  5.00 KiB (1%) |         200 |
| `["DEPTH", "emtpyf, depth=41"]`             |   4.630 μs (5%) |         |  5.12 KiB (1%) |         205 |
| `["DEPTH", "emtpyf, depth=42"]`             |   4.677 μs (5%) |         |  5.25 KiB (1%) |         210 |
| `["DEPTH", "emtpyf, depth=43"]`             |   4.719 μs (5%) |         |  5.38 KiB (1%) |         215 |
| `["DEPTH", "emtpyf, depth=44"]`             |   4.904 μs (5%) |         |  5.50 KiB (1%) |         220 |
| `["DEPTH", "emtpyf, depth=45"]`             |   5.038 μs (5%) |         |  5.62 KiB (1%) |         225 |
| `["DEPTH", "emtpyf, depth=46"]`             |   5.225 μs (5%) |         |  5.75 KiB (1%) |         230 |
| `["DEPTH", "emtpyf, depth=47"]`             |   5.130 μs (5%) |         |  5.88 KiB (1%) |         235 |
| `["DEPTH", "emtpyf, depth=48"]`             |   5.277 μs (5%) |         |  6.00 KiB (1%) |         240 |
| `["DEPTH", "emtpyf, depth=49"]`             |   5.508 μs (5%) |         |  6.12 KiB (1%) |         245 |
| `["DEPTH", "emtpyf, depth=5"]`              | 427.879 ns (5%) |         | 640 bytes (1%) |          25 |
| `["DEPTH", "emtpyf, depth=50"]`             |   5.603 μs (5%) |         |  6.25 KiB (1%) |         250 |
| `["DEPTH", "emtpyf, depth=51"]`             |   5.768 μs (5%) |         |  6.38 KiB (1%) |         255 |
| `["DEPTH", "emtpyf, depth=52"]`             |   5.620 μs (5%) |         |  6.50 KiB (1%) |         260 |
| `["DEPTH", "emtpyf, depth=53"]`             |   5.876 μs (5%) |         |  6.62 KiB (1%) |         265 |
| `["DEPTH", "emtpyf, depth=54"]`             |   5.950 μs (5%) |         |  6.75 KiB (1%) |         270 |
| `["DEPTH", "emtpyf, depth=55"]`             |   6.298 μs (5%) |         |  6.88 KiB (1%) |         275 |
| `["DEPTH", "emtpyf, depth=56"]`             |   6.210 μs (5%) |         |  7.00 KiB (1%) |         280 |
| `["DEPTH", "emtpyf, depth=57"]`             |   6.340 μs (5%) |         |  7.12 KiB (1%) |         285 |
| `["DEPTH", "emtpyf, depth=58"]`             |   6.442 μs (5%) |         |  7.25 KiB (1%) |         290 |
| `["DEPTH", "emtpyf, depth=59"]`             |   6.504 μs (5%) |         |  7.38 KiB (1%) |         295 |
| `["DEPTH", "emtpyf, depth=6"]`              | 536.614 ns (5%) |         | 768 bytes (1%) |          30 |
| `["DEPTH", "emtpyf, depth=60"]`             |   6.686 μs (5%) |         |  7.50 KiB (1%) |         300 |
| `["DEPTH", "emtpyf, depth=61"]`             |   6.910 μs (5%) |         |  7.62 KiB (1%) |         305 |
| `["DEPTH", "emtpyf, depth=62"]`             |   7.010 μs (5%) |         |  7.75 KiB (1%) |         310 |
| `["DEPTH", "emtpyf, depth=63"]`             |   7.022 μs (5%) |         |  7.88 KiB (1%) |         315 |
| `["DEPTH", "emtpyf, depth=64"]`             |   6.795 μs (5%) |         |  8.00 KiB (1%) |         320 |
| `["DEPTH", "emtpyf, depth=7"]`              | 644.663 ns (5%) |         | 896 bytes (1%) |          35 |
| `["DEPTH", "emtpyf, depth=8"]`              | 758.829 ns (5%) |         |  1.00 KiB (1%) |          40 |
| `["DEPTH", "emtpyf, depth=9"]`              | 881.774 ns (5%) |         |  1.12 KiB (1%) |          45 |
| `["DEPTH", "scope + access, depth=1"]`      |  94.435 ns (5%) |         | 128 bytes (1%) |           5 |
| `["DEPTH", "scope + access, depth=10"]`     |   1.007 μs (5%) |         |  1.25 KiB (1%) |          50 |
| `["DEPTH", "scope + access, depth=11"]`     |   1.203 μs (5%) |         |  1.38 KiB (1%) |          55 |
| `["DEPTH", "scope + access, depth=12"]`     |   1.282 μs (5%) |         |  1.50 KiB (1%) |          60 |
| `["DEPTH", "scope + access, depth=13"]`     |   2.407 μs (5%) |         |  1.62 KiB (1%) |          65 |
| `["DEPTH", "scope + access, depth=14"]`     |   1.490 μs (5%) |         |  1.75 KiB (1%) |          70 |
| `["DEPTH", "scope + access, depth=15"]`     |   1.671 μs (5%) |         |  1.88 KiB (1%) |          75 |
| `["DEPTH", "scope + access, depth=16"]`     |   1.780 μs (5%) |         |  2.00 KiB (1%) |          80 |
| `["DEPTH", "scope + access, depth=17"]`     |   1.893 μs (5%) |         |  2.12 KiB (1%) |          85 |
| `["DEPTH", "scope + access, depth=18"]`     |   2.034 μs (5%) |         |  2.25 KiB (1%) |          90 |
| `["DEPTH", "scope + access, depth=19"]`     |   2.150 μs (5%) |         |  2.38 KiB (1%) |          95 |
| `["DEPTH", "scope + access, depth=2"]`      | 165.901 ns (5%) |         | 256 bytes (1%) |          10 |
| `["DEPTH", "scope + access, depth=20"]`     |   2.258 μs (5%) |         |  2.50 KiB (1%) |         100 |
| `["DEPTH", "scope + access, depth=21"]`     |   2.327 μs (5%) |         |  2.62 KiB (1%) |         105 |
| `["DEPTH", "scope + access, depth=22"]`     |   2.347 μs (5%) |         |  2.75 KiB (1%) |         110 |
| `["DEPTH", "scope + access, depth=23"]`     |   2.660 μs (5%) |         |  2.88 KiB (1%) |         115 |
| `["DEPTH", "scope + access, depth=24"]`     |   2.677 μs (5%) |         |  3.00 KiB (1%) |         120 |
| `["DEPTH", "scope + access, depth=25"]`     |   2.856 μs (5%) |         |  3.12 KiB (1%) |         125 |
| `["DEPTH", "scope + access, depth=26"]`     |   2.881 μs (5%) |         |  3.25 KiB (1%) |         130 |
| `["DEPTH", "scope + access, depth=27"]`     |   3.024 μs (5%) |         |  3.38 KiB (1%) |         135 |
| `["DEPTH", "scope + access, depth=28"]`     |   3.209 μs (5%) |         |  3.50 KiB (1%) |         140 |
| `["DEPTH", "scope + access, depth=29"]`     |   3.290 μs (5%) |         |  3.62 KiB (1%) |         145 |
| `["DEPTH", "scope + access, depth=3"]`      | 312.955 ns (5%) |         | 384 bytes (1%) |          15 |
| `["DEPTH", "scope + access, depth=30"]`     |   3.271 μs (5%) |         |  3.75 KiB (1%) |         150 |
| `["DEPTH", "scope + access, depth=31"]`     |   3.525 μs (5%) |         |  3.88 KiB (1%) |         155 |
| `["DEPTH", "scope + access, depth=32"]`     |   4.677 μs (5%) |         |  4.00 KiB (1%) |         160 |
| `["DEPTH", "scope + access, depth=33"]`     |   3.866 μs (5%) |         |  4.12 KiB (1%) |         165 |
| `["DEPTH", "scope + access, depth=34"]`     |   4.127 μs (5%) |         |  4.25 KiB (1%) |         170 |
| `["DEPTH", "scope + access, depth=35"]`     |   4.054 μs (5%) |         |  4.38 KiB (1%) |         175 |
| `["DEPTH", "scope + access, depth=36"]`     |   5.222 μs (5%) |         |  4.50 KiB (1%) |         180 |
| `["DEPTH", "scope + access, depth=37"]`     |   4.522 μs (5%) |         |  4.62 KiB (1%) |         185 |
| `["DEPTH", "scope + access, depth=38"]`     |   4.437 μs (5%) |         |  4.75 KiB (1%) |         190 |
| `["DEPTH", "scope + access, depth=39"]`     |   4.570 μs (5%) |         |  4.88 KiB (1%) |         195 |
| `["DEPTH", "scope + access, depth=4"]`      | 419.397 ns (5%) |         | 512 bytes (1%) |          20 |
| `["DEPTH", "scope + access, depth=40"]`     |   4.647 μs (5%) |         |  5.00 KiB (1%) |         200 |
| `["DEPTH", "scope + access, depth=41"]`     |   4.891 μs (5%) |         |  5.12 KiB (1%) |         205 |
| `["DEPTH", "scope + access, depth=42"]`     |   5.071 μs (5%) |         |  5.25 KiB (1%) |         210 |
| `["DEPTH", "scope + access, depth=43"]`     |   5.108 μs (5%) |         |  5.38 KiB (1%) |         215 |
| `["DEPTH", "scope + access, depth=44"]`     |   5.130 μs (5%) |         |  5.50 KiB (1%) |         220 |
| `["DEPTH", "scope + access, depth=45"]`     |   6.374 μs (5%) |         |  5.62 KiB (1%) |         225 |
| `["DEPTH", "scope + access, depth=46"]`     |   5.445 μs (5%) |         |  5.75 KiB (1%) |         230 |
| `["DEPTH", "scope + access, depth=47"]`     |   5.507 μs (5%) |         |  5.88 KiB (1%) |         235 |
| `["DEPTH", "scope + access, depth=48"]`     |   5.838 μs (5%) |         |  6.00 KiB (1%) |         240 |
| `["DEPTH", "scope + access, depth=49"]`     |   5.693 μs (5%) |         |  6.12 KiB (1%) |         245 |
| `["DEPTH", "scope + access, depth=5"]`      | 529.524 ns (5%) |         | 640 bytes (1%) |          25 |
| `["DEPTH", "scope + access, depth=50"]`     |   5.932 μs (5%) |         |  6.25 KiB (1%) |         250 |
| `["DEPTH", "scope + access, depth=51"]`     |   5.935 μs (5%) |         |  6.38 KiB (1%) |         255 |
| `["DEPTH", "scope + access, depth=52"]`     |   6.232 μs (5%) |         |  6.50 KiB (1%) |         260 |
| `["DEPTH", "scope + access, depth=53"]`     |   6.238 μs (5%) |         |  6.62 KiB (1%) |         265 |
| `["DEPTH", "scope + access, depth=54"]`     |   6.326 μs (5%) |         |  6.75 KiB (1%) |         270 |
| `["DEPTH", "scope + access, depth=55"]`     |   6.362 μs (5%) |         |  6.88 KiB (1%) |         275 |
| `["DEPTH", "scope + access, depth=56"]`     |   6.604 μs (5%) |         |  7.00 KiB (1%) |         280 |
| `["DEPTH", "scope + access, depth=57"]`     |   6.442 μs (5%) |         |  7.12 KiB (1%) |         285 |
| `["DEPTH", "scope + access, depth=58"]`     |   6.920 μs (5%) |         |  7.25 KiB (1%) |         290 |
| `["DEPTH", "scope + access, depth=59"]`     |   6.997 μs (5%) |         |  7.38 KiB (1%) |         295 |
| `["DEPTH", "scope + access, depth=6"]`      | 617.765 ns (5%) |         | 768 bytes (1%) |          30 |
| `["DEPTH", "scope + access, depth=60"]`     |   6.858 μs (5%) |         |  7.50 KiB (1%) |         300 |
| `["DEPTH", "scope + access, depth=61"]`     |   7.080 μs (5%) |         |  7.62 KiB (1%) |         305 |
| `["DEPTH", "scope + access, depth=62"]`     |   7.355 μs (5%) |         |  7.75 KiB (1%) |         310 |
| `["DEPTH", "scope + access, depth=63"]`     |   7.580 μs (5%) |         |  7.88 KiB (1%) |         315 |
| `["DEPTH", "scope + access, depth=64"]`     |   7.473 μs (5%) |         |  8.00 KiB (1%) |         320 |
| `["DEPTH", "scope + access, depth=7"]`      | 701.214 ns (5%) |         | 896 bytes (1%) |          35 |
| `["DEPTH", "scope + access, depth=8"]`      | 841.270 ns (5%) |         |  1.00 KiB (1%) |          40 |
| `["DEPTH", "scope + access, depth=9"]`      | 900.769 ns (5%) |         |  1.12 KiB (1%) |          45 |
| `["WIDTH", "access 2^i, width=1"]`          |   3.480 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=1024"]`       |   1.038 μs (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=128"]`        | 138.780 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=16"]`         |  10.631 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=2"]`          |   3.469 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=2048"]`       |   2.063 μs (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=256"]`        | 265.488 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=32"]`         |  26.191 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=4"]`          |   3.720 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=4096"]`       |   4.116 μs (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=512"]`        | 518.172 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=64"]`         |  57.548 ns (5%) |         |                |             |
| `["WIDTH", "access 2^i, width=8"]`          |   5.700 ns (5%) |         |                |             |

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
       #1-16  4049 MHz    1148144 s       1616 s      79865 s    2183441 s      18455 s
  Memory: 125.69889831542969 GB (81410.21875 MB free)
  Uptime: 300633.66 sec
  Load Avg:  1.16  1.0  0.75
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-15.0.7 (ORCJIT, znver2)
  Threads: 1 on 16 virtual cores
```