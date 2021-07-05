# Benchmark

AWS t2.small:
```
$ free -h
              total        used        free      shared  buff/cache   available
Mem:          1.9Gi       250Mi       715Mi       1.0Mi       1.0Gi       1.5Gi
Swap:            0B          0B          0B
```
```
$ lscpu
Architecture:                    x86_64
CPU op-mode(s):                  32-bit, 64-bit
Byte Order:                      Little Endian
Address sizes:                   46 bits physical, 48 bits virtual
CPU(s):                          1
On-line CPU(s) list:             0
Thread(s) per core:              1
Core(s) per socket:              1
Socket(s):                       1
NUMA node(s):                    1
Vendor ID:                       GenuineIntel
CPU family:                      6
Model:                           63
Model name:                      Intel(R) Xeon(R) CPU E5-2676 v3 @ 2.40GHz
Stepping:                        2
CPU MHz:                         2398.100
BogoMIPS:                        4800.05
Hypervisor vendor:               Xen
Virtualization type:             full
L1d cache:                       32 KiB
L1i cache:                       32 KiB
L2 cache:                        256 KiB
L3 cache:                        30 MiB
NUMA node0 CPU(s):               0
Vulnerability Itlb multihit:     KVM: Mitigation: VMX unsupported
Vulnerability L1tf:              Mitigation; PTE Inversion
Vulnerability Mds:               Vulnerable: Clear CPU buffers attempted, no microcode; SMT Host state unknown
Vulnerability Meltdown:          Mitigation; PTI
Vulnerability Spec store bypass: Vulnerable
Vulnerability Spectre v1:        Mitigation; usercopy/swapgs barriers and __user pointer sanitization
Vulnerability Spectre v2:        Mitigation; Full generic retpoline, STIBP disabled, RSB filling
Vulnerability Srbds:             Not affected
Vulnerability Tsx async abort:   Not affected
Flags:                           fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht
                                  syscall nx rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 pcid s
                                 se4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm
                                  cpuid_fault invpcid_single pti fsgsbase bmi1 avx2 smep bmi2 erms invpcid xsaveopt
```

![https://quickchart.io/sandbox/#%7B%0A%20%20%22type%22%3A%20%22horizontalBar%22%2C%0A%20%20%22data%22%3A%20%7B%0A%20%20%20%20%22labels%22%3A%20%5B%0A%20%20%20%20%20%20%22C%2FC%2B%2B%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Rust%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Crystal%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%22%2C%0A%20%20%20%20%20%20%22Ada%22%2C%0A%20%20%20%20%20%20%22Java%22%2C%0A%20%20%20%20%20%20%22C%23%20(mono)%22%2C%0A%20%20%20%20%20%20%22Kotlin%22%2C%0A%20%20%20%20%20%20%22Assembler%2FNASM%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Assembler%2FNASM%22%2C%0A%20%20%20%20%20%20%22Lua%20(LuaJIT)%22%2C%0A%20%20%20%20%20%20%22Dart%20(compiled)%22%2C%0A%20%20%20%20%20%20%22Dart%22%2C%0A%20%20%20%20%20%20%22Node.js%2FJavascript%22%2C%0A%20%20%20%20%20%20%22Pascal%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Crystal%20(compiled)%22%2C%0A%20%20%20%20%20%20%22Haskell%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Go%22%2C%0A%20%20%20%20%20%20%22PHP%20(KPHP)%22%2C%0A%20%20%20%20%20%20%22Crystal%22%2C%0A%20%20%20%20%20%20%22Pascal%22%2C%0A%20%20%20%20%20%20%22Python%203%20(PyPy)%22%2C%0A%20%20%20%20%20%20%22Python%202%20(PyPy)%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%20(JIT)%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%22%2C%0A%20%20%20%20%20%20%22PHP%207.4%22%2C%0A%20%20%20%20%20%20%22Lua%22%2C%0A%20%20%20%20%20%20%22Rust%22%2C%0A%20%20%20%20%20%20%22Haskell%22%2C%0A%20%20%20%20%20%20%22PHP%205.6%22%2C%0A%20%20%20%20%20%20%22Perl%22%2C%0A%20%20%20%20%20%20%22Python%202%22%2C%0A%20%20%20%20%20%20%22Ruby%202%22%2C%0A%20%20%20%20%20%20%22Ruby%203%22%2C%0A%20%20%20%20%20%20%22Python%203%22%2C%0A%20%20%20%20%20%20%22R%22%2C%0A%20%20%20%20%5D%2C%0A%20%20%20%20%22datasets%22%3A%20%5B%0A%20%20%20%20%20%20%7B%0A%20%20%20%20%20%20%20%20%22label%22%3A%20%22Execution%20time%20in%20seconds%20(lower%20is%20better)%22%2C%0A%20%20%20%20%20%20%20%20%22backgroundColor%22%3A%20%22rgba(54%2C%20162%2C%20235%2C%200.5)%22%2C%0A%20%20%20%20%20%20%20%20%22borderColor%22%3A%20%22rgb(54%2C%20162%2C%20235)%22%2C%0A%20%20%20%20%20%20%20%20%22borderWidth%22%3A%201%2C%0A%20%20%20%20%20%20%20%20%22data%22%3A%20%5B%0A%20%20%20%20%20%20%20%20%20%2018.71%2C%0A%20%20%20%20%20%20%20%20%20%2018.75%2C%0A%20%20%20%20%20%20%20%20%20%2020.88%2C%0A%20%20%20%20%20%20%20%20%20%2022.48%2C%0A%20%20%20%20%20%20%20%20%20%2022.93%2C%0A%20%20%20%20%20%20%20%20%20%2023.01%2C%0A%20%20%20%20%20%20%20%20%20%2025.01%2C%0A%20%20%20%20%20%20%20%20%20%2025.38%2C%0A%20%20%20%20%20%20%20%20%20%2025.91%2C%0A%20%20%20%20%20%20%20%20%20%2027.15%2C%0A%20%20%20%20%20%20%20%20%20%2029.14%2C%0A%20%20%20%20%20%20%20%20%20%2030.30%2C%0A%20%20%20%20%20%20%20%20%20%2031.51%2C%0A%20%20%20%20%20%20%20%20%20%2031.63%2C%0A%20%20%20%20%20%20%20%20%20%2057.79%2C%0A%20%20%20%20%20%20%20%20%20%2060.98%2C%0A%20%20%20%20%20%20%20%20%20%2062.72%2C%0A%20%20%20%20%20%20%20%20%20%2063.00%2C%0A%20%20%20%20%20%20%20%20%20%2064.88%2C%0A%20%20%20%20%20%20%20%20%20%2065.42%2C%0A%20%20%20%20%20%20%20%20%20%2067.21%2C%0A%20%20%20%20%20%20%20%20%20%2089.38%2C%0A%20%20%20%20%20%20%20%20%20%2089.89%2C%0A%20%20%20%20%20%20%20%20%20%20100.98%2C%0A%20%20%20%20%20%20%20%20%20%20130.07%2C%0A%20%20%20%20%20%20%20%20%20%20151.49%2C%0A%20%20%20%20%20%20%20%20%20%20193.32%2C%0A%20%20%20%20%20%20%20%20%20%20240.39%2C%0A%20%20%20%20%20%20%20%20%20%20278.64%2C%0A%20%20%20%20%20%20%20%20%20%20310.77%2C%0A%20%20%20%20%20%20%20%20%20%20411.23%2C%0A%20%20%20%20%20%20%20%20%20%20455.96%2C%0A%20%20%20%20%20%20%20%20%20%20462.49%2C%0A%20%20%20%20%20%20%20%20%20%20471.97%2C%0A%20%20%20%20%20%20%20%20%20%20560.91%2C%0A%20%20%20%20%20%20%20%20%20%201227.41%2C%0A%0A%20%20%20%20%20%20%20%20%5D%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%5D%0A%20%20%7D%2C%0A%20%20%22options%22%3A%20%7B%0A%20%20%20%20%22plugins%22%3A%20%7B%0A%20%20%20%20%20%20%22datalabels%22%3A%20%7B%0A%20%20%20%20%20%20%20%20%22anchor%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22align%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22color%22%3A%20%22%23000%22%0A%20%20%20%20%20%20%7D%2C%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22responsive%22%3A%20true%2C%0A%20%20%20%20%22legend%22%3A%20%7B%0A%20%20%20%20%20%20%22position%22%3A%20%22top%22%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22title%22%3A%20%7B%0A%20%20%20%20%20%20%22display%22%3A%20false%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D](https://quickchart.io/chart?w=900&h=700&c=%7B%0A%20%20%22type%22%3A%20%22horizontalBar%22%2C%0A%20%20%22data%22%3A%20%7B%0A%20%20%20%20%22labels%22%3A%20%5B%0A%20%20%20%20%20%20%22C%2FC%2B%2B%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Rust%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Crystal%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%22%2C%0A%20%20%20%20%20%20%22Ada%22%2C%0A%20%20%20%20%20%20%22Java%22%2C%0A%20%20%20%20%20%20%22C%23%20(mono)%22%2C%0A%20%20%20%20%20%20%22Kotlin%22%2C%0A%20%20%20%20%20%20%22Assembler%2FNASM%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Assembler%2FNASM%22%2C%0A%20%20%20%20%20%20%22Lua%20(LuaJIT)%22%2C%0A%20%20%20%20%20%20%22Dart%20(compiled)%22%2C%0A%20%20%20%20%20%20%22Dart%22%2C%0A%20%20%20%20%20%20%22Node.js%2FJavascript%22%2C%0A%20%20%20%20%20%20%22Pascal%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Crystal%20(compiled)%22%2C%0A%20%20%20%20%20%20%22Haskell%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Go%22%2C%0A%20%20%20%20%20%20%22PHP%20(KPHP)%22%2C%0A%20%20%20%20%20%20%22Crystal%22%2C%0A%20%20%20%20%20%20%22Pascal%22%2C%0A%20%20%20%20%20%20%22Python%203%20(PyPy)%22%2C%0A%20%20%20%20%20%20%22Python%202%20(PyPy)%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%20(JIT)%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%22%2C%0A%20%20%20%20%20%20%22PHP%207.4%22%2C%0A%20%20%20%20%20%20%22Lua%22%2C%0A%20%20%20%20%20%20%22Rust%22%2C%0A%20%20%20%20%20%20%22Haskell%22%2C%0A%20%20%20%20%20%20%22PHP%205.6%22%2C%0A%20%20%20%20%20%20%22Perl%22%2C%0A%20%20%20%20%20%20%22Python%202%22%2C%0A%20%20%20%20%20%20%22Ruby%202%22%2C%0A%20%20%20%20%20%20%22Ruby%203%22%2C%0A%20%20%20%20%20%20%22Python%203%22%2C%0A%20%20%20%20%20%20%22R%22%2C%0A%20%20%20%20%5D%2C%0A%20%20%20%20%22datasets%22%3A%20%5B%0A%20%20%20%20%20%20%7B%0A%20%20%20%20%20%20%20%20%22label%22%3A%20%22Execution%20time%20in%20seconds%20(lower%20is%20better)%22%2C%0A%20%20%20%20%20%20%20%20%22backgroundColor%22%3A%20%22rgba(54%2C%20162%2C%20235%2C%200.5)%22%2C%0A%20%20%20%20%20%20%20%20%22borderColor%22%3A%20%22rgb(54%2C%20162%2C%20235)%22%2C%0A%20%20%20%20%20%20%20%20%22borderWidth%22%3A%201%2C%0A%20%20%20%20%20%20%20%20%22data%22%3A%20%5B%0A%20%20%20%20%20%20%20%20%20%2018.71%2C%0A%20%20%20%20%20%20%20%20%20%2018.75%2C%0A%20%20%20%20%20%20%20%20%20%2020.88%2C%0A%20%20%20%20%20%20%20%20%20%2022.48%2C%0A%20%20%20%20%20%20%20%20%20%2022.93%2C%0A%20%20%20%20%20%20%20%20%20%2023.01%2C%0A%20%20%20%20%20%20%20%20%20%2025.01%2C%0A%20%20%20%20%20%20%20%20%20%2025.38%2C%0A%20%20%20%20%20%20%20%20%20%2025.91%2C%0A%20%20%20%20%20%20%20%20%20%2027.15%2C%0A%20%20%20%20%20%20%20%20%20%2029.14%2C%0A%20%20%20%20%20%20%20%20%20%2030.30%2C%0A%20%20%20%20%20%20%20%20%20%2031.51%2C%0A%20%20%20%20%20%20%20%20%20%2031.63%2C%0A%20%20%20%20%20%20%20%20%20%2057.79%2C%0A%20%20%20%20%20%20%20%20%20%2060.98%2C%0A%20%20%20%20%20%20%20%20%20%2062.72%2C%0A%20%20%20%20%20%20%20%20%20%2063.00%2C%0A%20%20%20%20%20%20%20%20%20%2064.88%2C%0A%20%20%20%20%20%20%20%20%20%2065.42%2C%0A%20%20%20%20%20%20%20%20%20%2067.21%2C%0A%20%20%20%20%20%20%20%20%20%2089.38%2C%0A%20%20%20%20%20%20%20%20%20%2089.89%2C%0A%20%20%20%20%20%20%20%20%20%20100.98%2C%0A%20%20%20%20%20%20%20%20%20%20130.07%2C%0A%20%20%20%20%20%20%20%20%20%20151.49%2C%0A%20%20%20%20%20%20%20%20%20%20193.32%2C%0A%20%20%20%20%20%20%20%20%20%20240.39%2C%0A%20%20%20%20%20%20%20%20%20%20278.64%2C%0A%20%20%20%20%20%20%20%20%20%20310.77%2C%0A%20%20%20%20%20%20%20%20%20%20411.23%2C%0A%20%20%20%20%20%20%20%20%20%20455.96%2C%0A%20%20%20%20%20%20%20%20%20%20462.49%2C%0A%20%20%20%20%20%20%20%20%20%20471.97%2C%0A%20%20%20%20%20%20%20%20%20%20560.91%2C%0A%20%20%20%20%20%20%20%20%20%201227.41%2C%0A%0A%20%20%20%20%20%20%20%20%5D%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%5D%0A%20%20%7D%2C%0A%20%20%22options%22%3A%20%7B%0A%20%20%20%20%22plugins%22%3A%20%7B%0A%20%20%20%20%20%20%22datalabels%22%3A%20%7B%0A%20%20%20%20%20%20%20%20%22anchor%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22align%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22color%22%3A%20%22%23000%22%0A%20%20%20%20%20%20%7D%2C%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22responsive%22%3A%20true%2C%0A%20%20%20%20%22legend%22%3A%20%7B%0A%20%20%20%20%20%20%22position%22%3A%20%22top%22%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22title%22%3A%20%7B%0A%20%20%20%20%20%20%22display%22%3A%20false%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D)



## Prime number benchmark


### [PHP 5.6](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php5.6 -v && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p php5.6 /app/prime-number/php/cmd.php 10000'
```
```
PHP 5.6.40-52+ubuntu21.04.1+deb.sury.org+1 (cli)
Copyright (c) 1997-2016 The PHP Group
Zend Engine v2.6.0, Copyright (c) 1998-2016 Zend Technologies
    with Zend OPcache v7.0.6-dev, Copyright (c) 1999-2016, by Zend Technologies

The latest prime number: 104729
real 310.77
user 307.57
sys 0.06
```


### [PHP 7.4](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php7.4 -v && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p php7.4 /app/prime-number/php/cmd.php 10000'
```
```
PHP 7.4.21 (cli) (built: Jul  1 2021 16:10:19) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.21, Copyright (c), by Zend Technologies

The latest prime number: 104729
real 151.49
user 149.93
sys 0.02
```


### [PHP 8.0](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php8.0 -v && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p php8.0 /app/prime-number/php/cmd.php 10000'
```
```
PHP 8.0.8 (cli) (built: Jul  1 2021 15:27:21) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.8, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.8, Copyright (c), by Zend Technologies

The latest prime number: 104729
real 130.07
user 128.89
sys 0.01
```


### [PHP 8.0 (JIT)](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php8.0 -v && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p php8.0 -dopcache.enable_cli=1 -dopcache.jit_buffer_size=10M /app/prime-number/php/cmd.php 10000'
```
```
PHP 8.0.8 (cli) (built: Jul  1 2021 15:27:21) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.8, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.8, Copyright (c), by Zend Technologies

The latest prime number: 104729
real 100.98
user 100.00
sys 0.01
```


### [PHP (KPHP)](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark kphp --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark kphp --mode=cli /app/prime-number/php/cmd.php -o /app/prime-number/php/cmd.php_bin 2> /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/php/cmd.php_bin 10000'
```
```
kphp2cpp compiled at May 13 2021 16:36:36 UTC by gcc 9.3.0 64-bit after commit 1ab01d83379fb91db57f7e734c363a00ba4033f0 build 2412

The latest prime number: 104729
real 64.88
user 64.17
sys 0.01
```


### [Node.js/Javascript](./prime-number/javascript/cmd.js)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nodejs --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p nodejs /app/prime-number/javascript/cmd.js 10000'
```
```
v12.21.0

The latest prime number: 104729
real 31.63
user 31.14
sys 0.02
```


### [Python 2](./prime-number/python/cmd.py2)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark python2 --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p python2 /app/prime-number/python/cmd.py2 10000'
```
```
Python 2.7.18

The latest prime number:  104729
real 455.96
user 451.66
sys 0.09
```


### [Python 2 (PyPy)](./prime-number/python/cmd.py2)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark pypy --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p pypy /app/prime-number/python/cmd.py2 10000'
```
```
Python 2.7.18 (7.3.3+dfsg-1, Nov 22 2020, 05:23:32)
[PyPy 7.3.3 with GCC 10.2.0]

The latest prime number:  104729
real 89.89
user 88.77
sys 0.05
```


### [Python 3](./prime-number/python/cmd.py3)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark python3 --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p python3 /app/prime-number/python/cmd.py3 10000'
```
```
Python 3.9.5

The latest prime number:  104729
real 560.91
user 555.80
sys 0.06
```


### [Python 3 (PyPy)](./prime-number/python/cmd.py3)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark pypy3 --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p pypy3 /app/prime-number/python/cmd.py3 10000'
```
```
Python 3.6.12 (7.3.3+dfsg-3, Feb 26 2021, 04:58:43)
[PyPy 7.3.3 with GCC 10.2.1 20210220]

The latest prime number:  104729
real 89.38
user 88.54
sys 0.02
```


### [C/C++](./prime-number/c++/cmd.cpp)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark g++ --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark g++ -O0 /app/prime-number/c++/cmd.cpp -o /app/prime-number/c++/cmd.cpp_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/c++/cmd.cpp_bin 10000'
```
```
g++ (Ubuntu 10.3.0-1ubuntu1) 10.3.0
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


The latest prime number: 104729
real 22.48
user 22.31
sys 0.00
```


### [C/C++ (optimized compilation)](./prime-number/c++/cmd.cpp)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark g++ --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark g++ -Ofast /app/prime-number/c++/cmd.cpp -o /app/prime-number/c++/cmd.cpp_opt_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/c++/cmd.cpp_opt_bin 10000'
```
```
g++ (Ubuntu 10.3.0-1ubuntu1) 10.3.0
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.



The latest prime number: 104729
real 18.90
user 18.73
sys 0.00
```


### [Assembler/NASM](./prime-number/assembler/cmd.asm)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nasm --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark nasm -f elf64 -O0 /app/prime-number/assembler/cmd.asm && \
docker run --rm --volume $(pwd):/app benchmark ld -O0 -m elf_x86_64 /app/prime-number/assembler/cmd.o -o /app/prime-number/assembler/cmd.asm_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/assembler/cmd.asm_bin 10000'
```
```
NASM version 2.15.05

The latest prime number: 000104729
real 26.10
user 25.42
sys 0.00
```


### [Assembler/NASM (optimized compilation)](./prime-number/assembler/cmd.asm)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nasm --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark nasm -f elf64 -Ox /app/prime-number/assembler/cmd.asm && \
docker run --rm --volume $(pwd):/app benchmark ld -O3 -m elf_x86_64 /app/prime-number/assembler/cmd.o -o /app/prime-number/assembler/cmd.asm_opt_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/assembler/cmd.asm_opt_bin 10000'
```
```
NASM version 2.15.05

The latest prime number: 000104729
real 24.87
user 24.84
sys 0.00
```


### [Pascal](./prime-number/pascal/cmd.pas)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark fpc -iW && echo '' && \
docker run --rm --volume $(pwd):/app benchmark fpc -O- /app/prime-number/pascal/cmd.pas -o/app/prime-number/pascal/cmd.pas_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/pascal/cmd.pas_bin 10000'
```
```
3.2.0+dfsg-12

Free Pascal Compiler version 3.2.0+dfsg-12 [2021/01/25] for x86_64
Copyright (c) 1993-2020 by Florian Klaempfl and others
Target OS: Linux for x86-64
Compiling /app/prime-number/pascal/cmd.pas
Linking /app/prime-number/pascal/cmd.pas_bin
30 lines compiled, 0.2 sec

The latest prime number: 104729
real 67.21
user 66.66
sys 0.01
```


### [Pascal (optimized compilation)](./prime-number/pascal/cmd.pas)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark fpc -iW && echo '' && \
docker run --rm --volume $(pwd):/app benchmark fpc -O3 /app/prime-number/pascal/cmd.pas -o/app/prime-number/pascal/cmd.pas_opt_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/pascal/cmd.pas_opt_bin 10000'
```
```
3.2.0+dfsg-12

Free Pascal Compiler version 3.2.0+dfsg-12 [2021/01/25] for x86_64
Copyright (c) 1993-2020 by Florian Klaempfl and others
Target OS: Linux for x86-64
Compiling /app/prime-number/pascal/cmd.pas
Linking /app/prime-number/pascal/cmd.pas_opt_bin
30 lines compiled, 0.1 sec

The latest prime number: 104729
real 57.79
user 57.30
sys 0.00
```


### [Go](./prime-number/go/cmd.go)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark go version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark go build -o /app/prime-number/go/cmd.go_bin /app/prime-number/go/cmd.go && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/go/cmd.go_bin 10000'
```
```
go version go1.16.2 linux/amd64

The latest prime number: 104729
real 63.00
user 62.45
sys 0.00
```


### [Ruby 2](./prime-number/ruby/cmd.rb)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark /root/.rbenv/versions/2.7.3/bin/ruby --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /root/.rbenv/versions/2.7.3/bin/ruby /app/prime-number/ruby/cmd.rb 10000'
```
```
ruby 2.7.3p183 (2021-04-05 revision 6847ee089d) [x86_64-linux]

The latest prime number: 104729
real 462.49
user 458.28
sys 0.09
```


### [Ruby 3](./prime-number/ruby/cmd.rb)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark /root/.rbenv/versions/3.0.1/bin/ruby --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /root/.rbenv/versions/3.0.1/bin/ruby /app/prime-number/ruby/cmd.rb 10000'
```
```
ruby 3.0.1p64 (2021-04-05 revision 0fb782ee38) [x86_64-linux]

The latest prime number: 104729
real 471.97
user 467.68
sys 0.08
```


### [Java](./prime-number/java/cmd.java)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark java --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark javac /app/prime-number/java/cmd.java && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p java -classpath /app/prime-number/java/ cmd 10000'
```
```
openjdk 16.0.1 2021-04-20
OpenJDK Runtime Environment (build 16.0.1+9-Ubuntu-1)
OpenJDK 64-Bit Server VM (build 16.0.1+9-Ubuntu-1, mixed mode, sharing)

The latest prime number: 104729
real 23.01
user 22.83
sys 0.01
```


### [Rust](./prime-number/rust/cmd.rs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark rustc --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark rustc /app/prime-number/rust/cmd.rs -o /app/prime-number/rust/cmd.rs_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/rust/cmd.rs_bin 10000'
```
```
rustc 1.50.0

The latest prime number: 104729
real 240.39
user 238.20
sys 0.01
```


### [Rust (optimized compilation)](./prime-number/rust/cmd.rs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark rustc --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark rustc -C opt-level=3 /app/prime-number/rust/cmd.rs -o /app/prime-number/rust/cmd.rs_opt_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/rust/cmd.rs_opt_bin 10000'
```
```
rustc 1.50.0

The latest prime number: 104729
real 18.75
user 18.58
sys 0.00
```


### [R](./prime-number/r/cmd.r)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark Rscript --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p Rscript --vanilla /app/prime-number/r/cmd.r 10000'
```
```
R scripting front-end version 4.0.4 (2021-02-15)

[1] "The latest prime number:  104729"
real 1227.41
user 1215.75
sys 0.24
```


### [Dart](./prime-number/dart/cmd.dart)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark dart --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p dart run /app/prime-number/dart/cmd.dart 10000'
```
```
Dart SDK version: 2.13.4 (stable) (Unknown timestamp) on "linux_x64"

The latest prime number: 104729
real 31.51
user 29.89
sys 0.10
```


### [Dart (compiled)](./prime-number/dart/cmd.dart)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark dart --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark dart compile exe /app/prime-number/dart/cmd.dart -o /app/prime-number/dart/cmd.dart_opt_bin > /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/dart/cmd.dart_opt_bin 10000'
```
```
Dart SDK version: 2.13.4 (stable) (Unknown timestamp) on "linux_x64"

The latest prime number: 104729
real 30.30
user 29.02
sys 0.00
```


### [Perl](./prime-number/perl/cmd.pl)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark perl --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p perl /app/prime-number/perl/cmd.pl 10000'
```
```
This is perl 5, version 32, subversion 1 (v5.32.1) built for x86_64-linux-gnu-thread-multi
(with 46 registered patches, see perl -V for more detail)

Copyright 1987-2021, Larry Wall

Perl may be copied only under the terms of either the Artistic License or the
GNU General Public License, which may be found in the Perl 5 source kit.

Complete documentation for Perl, including FAQ lists, should be found on
this system using "man perl" or "perldoc perl".  If you have access to the
Internet, point your browser at http://www.perl.org/, the Perl Home Page.


The latest prime number: 104729
real 411.23
user 407.41
sys 0.04
```


### [Lua](./prime-number/lua/cmd.lua)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark lua -v && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p lua /app/prime-number/lua/cmd.lua 10000'
```
```
Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio

The latest prime number:        104729
real 193.32
user 191.64
sys 0.02
```


### [Lua (LuaJIT)](./prime-number/lua/cmd.lua)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark luajit -v && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p luajit /app/prime-number/lua/cmd.lua 10000'
```
```
LuaJIT 2.1.0-beta3 -- Copyright (C) 2005-2017 Mike Pall. http://luajit.org/

The latest prime number:        104729
real 29.14
user 28.87
sys 0.00
```


### [Ada](./prime-number/ada/cmd.adb)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark gnatmake --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark gnatmake -q /app/prime-number/ada/cmd.adb -o /app/prime-number/ada/cmd.adb_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/ada/cmd.adb_bin 10000'
```
```
GNATMAKE 10.3.0
Copyright (C) 1995-2020, Free Software Foundation, Inc.
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


The latest prime number:  104729
real 22.93
user 22.72
sys 0.00
```


### [Haskell](./prime-number/haskell/cmd.hs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark ghc --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark ghc /app/prime-number/haskell/cmd.hs -o /app/prime-number/haskell/cmd.hs_bin > /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/haskell/cmd.hs_bin 10000'
```
```
The Glorious Glasgow Haskell Compilation System, version 8.8.4

The latest prime number: 104729
real 278.64
user 275.07
sys 1.00
```


### [Haskell (optimized compilation)](./prime-number/haskell/cmd.hs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark ghc --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark ghc -O /app/prime-number/haskell/cmd.hs -o /app/prime-number/haskell/cmd.hs_opt_bin > /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/haskell/cmd.hs_opt_bin 10000'
```
```
The Glorious Glasgow Haskell Compilation System, version 8.8.4

The latest prime number: 104729
real 62.72
user 62.17
sys 0.00
```


### [Kotlin](./prime-number/kotlin/cmd.kt)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark /root/kotlinc/bin/kotlinc -version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark /root/kotlinc/bin/kotlinc /app/prime-number/kotlin/cmd.kt -include-runtime -d /app/prime-number/kotlin/cmd.jar && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p java -jar /app/prime-number/kotlin/cmd.jar 10000'
```
```
info: kotlinc-jvm 1.5.20 (JRE 16.0.1+9-Ubuntu-1)

The latest prime number: 104729
real 25.38
user 25.11
sys 0.01
```


### [Crystal](./prime-number/crystal/cmd.cr)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark crystal --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p crystal /app/prime-number/crystal/cmd.cr 10000'
```
```
Crystal 1.0.0 [dd40a2442] (2021-03-22)

LLVM: 10.0.0
Default target: x86_64-unknown-linux-gnu

The latest prime number: 104729
real 65.42
user 64.14
sys 0.33
```


### [Crystal (compiled)](./prime-number/crystal/cmd.cr)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark crystal --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark crystal build /app/prime-number/crystal/cmd.cr -o /app/prime-number/crystal/cmd.cr_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/crystal/cmd.cr_bin 10000'
```
```
Crystal 1.0.0 [dd40a2442] (2021-03-22)

LLVM: 10.0.0
Default target: x86_64-unknown-linux-gnu

The latest prime number: 104729
real 60.98
user 60.40
sys 0.00
```


### [Crystal (optimized compilation)](./prime-number/crystal/cmd.cr)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark crystal --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark crystal build --release /app/prime-number/crystal/cmd.cr -o /app/prime-number/crystal/cmd.cr_opt_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/crystal/cmd.cr_opt_bin 10000'
```
```
Crystal 1.0.0 [dd40a2442] (2021-03-22)

LLVM: 10.0.0
Default target: x86_64-unknown-linux-gnu

The latest prime number: 104729
real 20.88
user 20.67
sys 0.00
```


### [C# (mono)](./prime-number/c%23/cmd.cs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark mono-csc --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark mono-csc /app/prime-number/c#/cmd.cs -out:/app/prime-number/c#/cmd.cs_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p mono /app/prime-number/c#/cmd.cs_bin 10000'
```
```
Mono C# compiler version 6.12.0.122

The latest prime number: 104729
real 25.01
user 24.75
sys 0.02
```


### [C# (dotnet)](./prime-number/c%23/cmd.cs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark dotnet --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark dotnet build --runtime linux-x64 /app/prime-number/c#/ > /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p dotnet run -p /app/prime-number/c#/ 10000'
```
```
Mono C# compiler version 6.12.0.122

The latest prime number: 104729
real 25.01
user 24.75
sys 0.02
```


### [Scala](./prime-number/scala/cmd.scala)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark scala -version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark scalac -d /app/prime-number/scala /app/prime-number/scala/cmd.scala && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time scala -classpath /app/prime-number/scala cmd 10000'
```
```
```
