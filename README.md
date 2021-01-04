# Benchmark

All setting for compiler / interpreter by default
Some benchmark tests for different programming languages

```
$ lscpu
Architecture:        x86_64
CPU op-mode(s):      32-bit, 64-bit
Byte Order:          Little Endian
Address sizes:       39 bits physical, 48 bits virtual
CPU(s):              6
On-line CPU(s) list: 0-5
Thread(s) per core:  1
Core(s) per socket:  6
Socket(s):           1
NUMA node(s):        1
Vendor ID:           GenuineIntel
CPU family:          6
Model:               158
Model name:          Intel(R) Core(TM) i5-9400 CPU @ 2.90GHz
Stepping:            10
CPU MHz:             800.038
CPU max MHz:         4100.0000
CPU min MHz:         800.0000
BogoMIPS:            5799.77
Virtualization:      VT-x
L1d cache:           32K
L1i cache:           32K
L2 cache:            256K
L3 cache:            9216K
NUMA node0 CPU(s):   0-5
```

## Prime number benchmark

### [PHP 7.3.19](./prime-number/cmd.php)
```
$ time php cmd.php 5000
The latest prime number: 48611

real    0m19.796s
user    0m19.649s
sys     0m0.028s
```

### [Python 2.7.16](./prime-number/cmd.py2)
```
$ time python2 cmd.py2 5000
The latest prime number:  48611

real    0m59.485s
user    0m59.448s
sys     0m0.017s
```

### [Python 3.7.3](./prime-number/cmd.py3)
```
$ time python3 cmd.py3 5000
The latest prime number:  48611

real    1m13.530s
user    1m13.512s
sys     0m0.008s
```

### [C/C++](./prime-number/cmd.cpp)
```
$ g++ cmd.cpp -o cmd.cpp_bin
$ time ./cmd.cpp_bin 5000
The latest prime number: 48611

real    0m2.926s
user    0m2.919s
sys     0m0.005s
```

### [Pascal](./prime-number/cmd.cpp)
```
$ fpc cmd.pas -ocmd.pas_bin
$ time ./cmd.pas_bin 5000
The latest prime number: 48611

real    0m8.998s
user    0m8.997s
sys     0m0.001s
```

### [Go](./prime-number/cmd.go)
```
$ go build -o ./cmd.go_bin cmd.go
$ time ./cmd.go_bin 5000
The latest prime number: 48611

real    0m8.173s
user    0m8.176s
sys     0m0.004s
```
