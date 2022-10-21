# Benchmark

All tests perform the same task of finding a prime number.

A primitive enumeration was taken as a basis, which does not even stop if it already knows that the number is not prime.

PS. The code that is given in the tests can be optimized for a very long time, starting from choosing another algorithm for finding a prime number, ending with optimizations for a specific language. But the meaning of this code is not that it works as fast as possible, but that it can be reproduced as quickly as possible on other PLs.

More info about testing [RU]: https://habr.com/ru/post/563078/



## Test PC info - **DigitalOcean 1CPU/2GB (Premium Intel with NVMe SSD)**
```
root@ubuntu-s-1vcpu-2gb-intel-fra1-01:~# free -h
               total        used        free      shared  buff/cache   available
Mem:           1.9Gi       307Mi       106Mi       1.0Mi       1.5Gi       1.5Gi
Swap:             0B          0B          0B
```

```
root@ubuntu-s-1vcpu-2gb-intel-fra1-01:~# lscpu
Architecture:            x86_64
  CPU op-mode(s):        32-bit, 64-bit
  Address sizes:         40 bits physical, 48 bits virtual
  Byte Order:            Little Endian
CPU(s):                  1
  On-line CPU(s) list:   0
Vendor ID:               GenuineIntel
  Model name:            DO-Premium-Intel
    CPU family:          6
    Model:               85
    Thread(s) per core:  1
    Core(s) per socket:  1
    Socket(s):           1
    Stepping:            7
    BogoMIPS:            4000.00
    Flags:               fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 syscall nx pdpe1gb rdtscp lm constant
                         _tsc rep_good nopl xtopology cpuid tsc_known_freq pni pclmulqdq vmx ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_
                         timer aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch cpuid_fault invpcid_single ssbd ibrs ibpb ibrs_enhanced tpr_shadow
                          vnmi flexpriority ept vpid ept_ad fsgsbase bmi1 avx2 smep bmi2 erms invpcid avx512f avx512dq rdseed adx smap clflushopt clwb avx512cd
                         avx512bw avx512vl xsaveopt xsavec xgetbv1 arat pku ospke avx512_vnni arch_capabilities
Virtualization features:
  Virtualization:        VT-x
  Hypervisor vendor:     KVM
  Virtualization type:   full
Caches (sum of all):
  L1d:                   32 KiB (1 instance)
  L1i:                   32 KiB (1 instance)
  L2:                    4 MiB (1 instance)
NUMA:
  NUMA node(s):          1
  NUMA node0 CPU(s):     0
Vulnerabilities:
  Itlb multihit:         KVM: Mitigation: VMX disabled
  L1tf:                  Not affected
  Mds:                   Not affected
  Meltdown:              Not affected
  Mmio stale data:       Vulnerable: Clear CPU buffers attempted, no microcode; SMT Host state unknown
  Spec store bypass:     Mitigation; Speculative Store Bypass disabled via prctl and seccomp
  Spectre v1:            Mitigation; usercopy/swapgs barriers and __user pointer sanitization
  Spectre v2:            Mitigation; Enhanced IBRS, IBPB conditional, RSB filling
  Srbds:                 Not affected
  Tsx async abort:       Not affected
```



## Test results

![https://quickchart.io/sandbox/#%7B%22chart%22%3A%22%7B%5Cn%20%20type%3A%20'horizontalBar'%2C%5Cn%20%20data%3A%20%7B%5Cn%20%20%20%20labels%3A%20%5B%5Cn%20%20%20%20%20%20%20%20'Lua%20(LuaJIT%20-j%20on)'%2C%5Cn%20%20%20%20%20%20%20%20'Rust'%2C%5Cn%20%20%20%20%20%20%20%20'C%2FC%2B%2B'%2C%5Cn%20%20%20%20%20%20%20%20'Assembler%2FNASM'%2C%5Cn%20%20%20%20%20%20%20%20'Objective%20C'%2C%5Cn%20%20%20%20%20%20%20%20'Swift'%2C%5Cn%20%20%20%20%20%20%20%20'Crystal'%2C%5Cn%20%20%20%20%20%20%20%20'C%23%20(mono)'%2C%5Cn%20%20%20%20%20%20%20%20'Kotlin'%2C%5Cn%20%20%20%20%20%20%20%20'Node.js%2FJavascript'%2C%5Cn%20%20%20%20%20%20%20%20'Java'%2C%5Cn%20%20%20%20%20%20%20%20'D'%2C%5Cn%20%20%20%20%20%20%20%20'Dart'%2C%5Cn%20%20%20%20%20%20%20%20'Scala'%2C%5Cn%20%20%20%20%20%20%20%20'Node.js%2FTypeScript'%2C%5Cn%20%20%20%20%20%20%20%20'Visual%20Basic%20(mono)'%2C%5Cn%20%20%20%20%20%20%20%20'Ada'%2C%5Cn%20%20%20%20%20%20%20%20'Fortran'%2C%5Cn%20%20%20%20%20%20%20%20'Processing'%2C%5Cn%20%20%20%20%20%20%20%20'Haskell'%2C%5Cn%20%20%20%20%20%20%20%20'Pascal'%2C%5Cn%20%20%20%20%20%20%20%20'Nim'%2C%5Cn%20%20%20%20%20%20%20%20'Go'%2C%5Cn%20%20%20%20%20%20%20%20'C%23%20(dotnet)'%2C%5Cn%20%20%20%20%20%20%20%20'Python%202%20(PyPy)'%2C%5Cn%20%20%20%20%20%20%20%20'Python%203%20(PyPy)'%2C%5Cn%20%20%20%20%20%20%20%20'Elixir'%2C%5Cn%20%20%20%20%20%20%20%20'PHP%208.1%20(JIT)'%2C%5Cn%20%20%20%20%20%20%20%20'Lua%20(LuaJIT%20-j%20off)'%2C%5Cn%20%20%20%20%20%20%20%20'Lua'%2C%5Cn%20%20%20%20%20%20%20%20'PHP%208.1'%2C%5Cn%20%20%20%20%20%20%20%20'PHP%207.4'%2C%5Cn%20%20%20%20%20%20%20%20'Groovy'%2C%5Cn%20%20%20%20%20%20%20%20'Haxe'%2C%5Cn%20%20%20%20%20%20%20%20'PHP%205.6'%2C%5Cn%20%20%20%20%20%20%20%20'Perl'%2C%5Cn%20%20%20%20%20%20%20%20'Ruby%203'%2C%5Cn%20%20%20%20%20%20%20%20'Python%202'%2C%5Cn%20%20%20%20%20%20%20%20'Ruby%202'%2C%5Cn%20%20%20%20%20%20%20%20'Julia'%2C%5Cn%20%20%20%20%20%20%20%20'Python%203'%2C%5Cn%20%20%20%20%20%20%20%20'R'%2C%5Cn%20%20%20%20%20%20%20%20'Lisp'%2C%5Cn%20%20%20%20%20%20%20%20'PowerShell'%2C%5Cn%20%20%20%20%20%20%20%20'Bash'%5Cn%20%20%20%20%5D%2C%5Cn%20%20%20%20datasets%3A%20%5B%5Cn%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20label%3A%20'Execution%20time%20in%20seconds%20(lower%20is%20better%2C%20logarithmic%20chart)'%2C%5Cn%20%20%20%20%20%20%20%20backgroundColor%3A%20'rgba(54%2C%20162%2C%20235%2C%200.5)'%2C%5Cn%20%20%20%20%20%20%20%20borderColor%3A%20'rgb(54%2C%20162%2C%20235)'%2C%5Cn%20%20%20%20%20%20%20%20borderWidth%3A%201%2C%5Cn%20%20%20%20%20%20%20%20data%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%2012.12%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2013.34%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2013.39%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2013.44%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2014.52%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2014.66%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2014.67%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2015.16%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2015.29%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2015.31%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2015.43%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2015.44%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2016.43%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2016.61%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2017.66%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2018.11%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2019.7%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2020.7%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2021.34%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2022.24%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2022.31%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2022.47%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2024.73%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2027.39%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2028.84%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2031.18%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2033.53%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2049.78%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2071.37%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2088.2%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2091.46%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2096.84%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20221.71%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20293.02%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20384.82%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20519.44%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20532.13%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20547.58%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20552.13%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20760.78%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20764.93%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%201462.71%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%208879.87%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2011051.71%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%2017869.5%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%20%20%7D%5Cn%20%20%20%20%5D%5Cn%20%20%7D%2C%5Cn%20%20options%3A%20%7B%5Cn%20%20%20%20scales%3A%20%7B%5Cn%20%20%20%20%20%20xAxes%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20type%3A%20'logarithmic'%2C%5Cn%20%20%20%20%20%20%20%20%20%20ticks%3A%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20min%3A%2010%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20max%3A%2030000%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20autoSkip%3A%20true%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20autoSkipPadding%3A%20100%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20maxRotation%3A%200%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20callback%3A%20function(value)%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20return%20value%3B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%5D%2C%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20plugins%3A%20%7B%5Cn%20%20%20%20%20%20datalabels%3A%20%7B%5Cn%20%20%20%20%20%20%20%20anchor%3A%20'end'%2C%5Cn%20%20%20%20%20%20%20%20align%3A%20'end'%2C%5Cn%20%20%20%20%20%20%20%20color%3A%20'%23000'%5Cn%20%20%20%20%20%20%7D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20responsive%3A%20true%2C%5Cn%20%20%20%20legend%3A%20%7B%5Cn%20%20%20%20%20%20position%3A%20'top'%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20title%3A%20%7B%5Cn%20%20%20%20%20%20display%3A%20false%5Cn%20%20%20%20%7D%5Cn%20%20%7D%5Cn%7D%22%2C%22width%22%3A1200%2C%22height%22%3A1200%2C%22version%22%3A%222%22%2C%22backgroundColor%22%3A%22%23fff%22%7D](./chart-1659532016.webp)



## Example of single run and test result


### [PHP 5.6](./prime-number/php/cmd.php)
```
docker run mamchyts/benchmark:latest php5.6 -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p php5.6 /app/prime-number/php/cmd.php 10000 2>&1'
```
```
PHP 5.6.40-61+ubuntu22.04.1+deb.sury.org+1 (cli)
Copyright (c) 1997-2016 The PHP Group
Zend Engine v2.6.0, Copyright (c) 1998-2016 Zend Technologies
    with Zend OPcache v7.0.6-dev, Copyright (c) 1999-2016, by Zend Technologies

The latest prime number: 104729

real 384.82
user 384.15
sys 0.09
```


### [PHP 7.4](./prime-number/php/cmd.php)
```
docker run mamchyts/benchmark:latest php7.4 -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p php7.4 /app/prime-number/php/cmd.php 10000 2>&1'
```
```
PHP 7.4.30 (cli) (built: Aug  1 2022 15:06:35) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.30, Copyright (c), by Zend Technologies

The latest prime number: 104729

real 96.84
user 96.54
sys 0.03
```


### [PHP 8.1](./prime-number/php/cmd.php)
```
docker run mamchyts/benchmark:latest php8.1 -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p php8.1 /app/prime-number/php/cmd.php 10000 2>&1'
```
```
PHP 8.1.8 (cli) (built: Jul 11 2022 08:30:39) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.8, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.8, Copyright (c), by Zend Technologies

The latest prime number: 104729

real 91.46
user 91.25
sys 0.04
```


### [PHP 8.1 (JIT)](./prime-number/php/cmd.php)
```
docker run mamchyts/benchmark:latest php8.1 -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p php8.1 -dopcache.enable_cli=1 -dopcache.jit=1205 -dopcache.jit_buffer_size=8M /app/prime-number/php/cmd.php 10000 2>&1'
```
```
PHP 8.1.8 (cli) (built: Jul 11 2022 08:30:39) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.8, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.8, Copyright (c), by Zend Technologies

The latest prime number: 104729

real 49.78
user 49.67
sys 0.03
```


### [Node.js/Javascript](./prime-number/javascript/cmd.js)
```
docker run mamchyts/benchmark:latest nodejs --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p nodejs /app/prime-number/javascript/cmd.js 10000 2>&1'
```
```
v12.22.9

The latest prime number: 104729

real 15.31
user 15.24
sys 0.02
```


### [Node.js/TypeScript](./prime-number/typescript/cmd.ts)
```
docker run mamchyts/benchmark:latest ts-node --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p ts-node /app/prime-number/typescript/cmd.ts 10000 2>&1'
```
```
v10.9.1

The latest prime number: 104729

real 17.66
user 17.46
sys 0.14
```


### [Python 2](./prime-number/python/cmd.py2)
```
docker run mamchyts/benchmark:latest python2 --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p python2 /app/prime-number/python/cmd.py2 10000 2>&1'
```
```
Python 2.7.18

The latest prime number:  104729

real 547.58
user 545.77
sys 0.11
```


### [Python 2 (PyPy)](./prime-number/python/cmd.py2)
```
docker run mamchyts/benchmark:latest pypy --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p pypy /app/prime-number/python/cmd.py2 10000 2>&1'
```
```
Python 2.7.18 (7.3.9+dfsg-1, Apr 01 2022, 21:40:34)
[PyPy 7.3.9 with GCC 11.2.0]

The latest prime number:  104729

real 28.84
user 28.74
sys 0.03
```


### [Python 3](./prime-number/python/cmd.py3)
```
docker run mamchyts/benchmark:latest python3 --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p python3 /app/prime-number/python/cmd.py3 10000 2>&1'
```
```
Python 3.10.4

The latest prime number:  104729

real 764.93
user 763.63
sys 0.16
```


### [Python 3 (PyPy)](./prime-number/python/cmd.py3)
```
docker run mamchyts/benchmark:latest pypy3 --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p pypy3 /app/prime-number/python/cmd.py3 10000 2>&1'
```
```
Python 3.8.13 (7.3.9+dfsg-1, Apr 01 2022, 21:41:47)
[PyPy 7.3.9 with GCC 11.2.0]

The latest prime number:  104729

real 31.18
user 31.07
sys 0.04
```


### [C/C++](./prime-number/c++/cmd.cpp)
```
docker run mamchyts/benchmark:latest g++ --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest g++ -Ofast /app/prime-number/c++/cmd.cpp -o /app/prime-number/c++/cmd.cpp_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/c++/cmd.cpp_bin 10000 2>&1'
```
```
g++ (Ubuntu 11.2.0-19ubuntu1) 11.2.0
Copyright (C) 2021 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


The latest prime number: 104729

real 13.39
user 13.35
sys 0.01
```


### [Assembler/NASM](./prime-number/assembler/cmd.asm)
```
docker run mamchyts/benchmark:latest nasm --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest nasm -Ox -f elf32 /app/prime-number/assembler/cmd.asm && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest ld -O3 -m elf_i386 /app/prime-number/assembler/cmd.o -o /app/prime-number/assembler/cmd.asm_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/assembler/cmd.asm_bin 10000 2>&1'
```
```
NASM version 2.15.05

The latest prime number: 0000104729

real 13.44
user 13.4
sys 0
```


### [Pascal](./prime-number/pascal/cmd.pas)
```
docker run mamchyts/benchmark:latest fpc -iW 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest fpc -O3 /app/prime-number/pascal/cmd.pas -o/app/prime-number/pascal/cmd.pas_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/pascal/cmd.pas_bin 10000 2>&1'
```
```
3.2.2+dfsg-9ubuntu1

Free Pascal Compiler version 3.2.2+dfsg-9ubuntu1 [2022/04/11] for x86_64
Copyright (c) 1993-2021 by Florian Klaempfl and others
Target OS: Linux for x86-64
Compiling /app/prime-number/pascal/cmd.pas
Linking /app/prime-number/pascal/cmd.pas_bin
30 lines compiled, 0.2 sec
The latest prime number: 104729

real 22.31
user 22.26
sys 0
```


### [Go](./prime-number/go/cmd.go)
```
docker run mamchyts/benchmark:latest go version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest go build -ldflags "-s" -o /app/prime-number/go/cmd.go_bin /app/prime-number/go/cmd.go && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/go/cmd.go_bin 10000 2>&1'
```
```
go version go1.18.1 linux/amd64

The latest prime number: 104729

real 24.73
user 24.62
sys 0.05
```


### [Ruby 2](./prime-number/ruby/cmd.rb)
```
docker run mamchyts/benchmark:latest /root/.rbenv/versions/2.7.6/bin/ruby --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /root/.rbenv/versions/2.7.6/bin/ruby /app/prime-number/ruby/cmd.rb 10000 2>&1'
```
```
ruby 2.7.6p219 (2022-04-12 revision c9c2245c0a) [x86_64-linux]

The latest prime number: 104729

real 552.13
user 550.9
sys 0.16
```


### [Ruby 3](./prime-number/ruby/cmd.rb)
```
docker run mamchyts/benchmark:latest /root/.rbenv/versions/3.1.2/bin/ruby --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /root/.rbenv/versions/3.1.2/bin/ruby /app/prime-number/ruby/cmd.rb 10000 2>&1'
```
```
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]

The latest prime number: 104729

real 532.13
user 531.02
sys 0.17
```


### [Java](./prime-number/java/cmd.java)
```
docker run mamchyts/benchmark:latest java --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest javac /app/prime-number/java/cmd.java && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p java -classpath /app/prime-number/java/ cmd 10000 2>&1'
```
```
openjdk 18-ea 2022-03-22
OpenJDK Runtime Environment (build 18-ea+36-Ubuntu-1)
OpenJDK 64-Bit Server VM (build 18-ea+36-Ubuntu-1, mixed mode, sharing)

The latest prime number: 104729

real 15.43
user 15.33
sys 0.05
```


### [Rust](./prime-number/rust/cmd.rs)
```
docker run mamchyts/benchmark:latest rustc --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest rustc -C opt-level=3 /app/prime-number/rust/cmd.rs -o /app/prime-number/rust/cmd.rs_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/rust/cmd.rs_bin 10000 2>&1'
```
```
rustc 1.59.0

The latest prime number: 104729

real 13.34
user 13.31
sys 0
```


### [R](./prime-number/r/cmd.r)
```
docker run mamchyts/benchmark:latest Rscript --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p Rscript --vanilla /app/prime-number/r/cmd.r 10000 2>&1'
```
```
R scripting front-end version 4.1.2 (2021-11-01)

[1] "The latest prime number:  104729"

real 1462.71
user 1459.69
sys 0.53
```


### [Dart](./prime-number/dart/cmd.dart)
```
docker run mamchyts/benchmark:latest dart --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest dart --disable-analytics compile exe /app/prime-number/dart/cmd.dart -o /app/prime-number/dart/cmd.dart_bin > /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/dart/cmd.dart_bin 10000 2>&1'
```
```
Dart SDK version: 2.17.6 (stable) (Unknown timestamp) on "linux_x64"

The latest prime number: 104729

real 16.43
user 15.39
sys 0.01
```


### [Perl](./prime-number/perl/cmd.pl)
```
docker run mamchyts/benchmark:latest perl --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p perl /app/prime-number/perl/cmd.pl 10000 2>&1'
```
```
This is perl 5, version 34, subversion 0 (v5.34.0) built for x86_64-linux-gnu-thread-multi
(with 50 registered patches, see perl -V for more detail)

Copyright 1987-2021, Larry Wall

Perl may be copied only under the terms of either the Artistic License or the
GNU General Public License, which may be found in the Perl 5 source kit.

Complete documentation for Perl, including FAQ lists, should be found on
this system using "man perl" or "perldoc perl".  If you have access to the
Internet, point your browser at http://www.perl.org/, the Perl Home Page.


The latest prime number: 104729

real 519.44
user 518.51
sys 0.11
```


### [Lua](./prime-number/lua/cmd.lua)
```
docker run mamchyts/benchmark:latest lua -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p lua /app/prime-number/lua/cmd.lua 10000 2>&1'
```
```
Lua 5.4.4  Copyright (C) 1994-2022 Lua.org, PUC-Rio

The latest prime number:        104729

real 88.2
user 88
sys 0.02
```


### [Lua (LuaJIT -j off)](./prime-number/lua/cmd.lua)
```
docker run mamchyts/benchmark:latest luajit -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p luajit -j off /app/prime-number/lua/cmd.lua 10000 2>&1'
```
```
LuaJIT 2.1.0-beta3 -- Copyright (C) 2005-2017 Mike Pall. http://luajit.org/

The latest prime number:        104729

real 71.37
user 71.22
sys 0.02
```


### [Lua (LuaJIT -j on)](./prime-number/lua/cmd.lua)
```
docker run mamchyts/benchmark:latest luajit -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p luajit -j on /app/prime-number/lua/cmd.lua 10000 2>&1'
```
```
LuaJIT 2.1.0-beta3 -- Copyright (C) 2005-2017 Mike Pall. http://luajit.org/

The latest prime number:        104729

real 12.12
user 12.08
sys 0
```


### [Ada](./prime-number/ada/cmd.adb)
```
docker run mamchyts/benchmark:latest gnatmake --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest gnatmake -q /app/prime-number/ada/cmd.adb -o /app/prime-number/ada/cmd.adb_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/ada/cmd.adb_bin 10000 2>&1'
```
```
GNATMAKE 10.3.0
Copyright (C) 1995-2020, Free Software Foundation, Inc.
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


The latest prime number:  104729

real 19.7
user 19.65
sys 0
```


### [Haskell](./prime-number/haskell/cmd.hs)
```
docker run mamchyts/benchmark:latest ghc --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest ghc -O /app/prime-number/haskell/cmd.hs -o /app/prime-number/haskell/cmd.hs_bin > /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/haskell/cmd.hs_bin 10000 2>&1'
```
```
The Glorious Glasgow Haskell Compilation System, version 8.8.4

The latest prime number: 104729

real 22.24
user 22.19
sys 0
```


### [Kotlin](./prime-number/kotlin/cmd.kt)
```
docker run mamchyts/benchmark:latest kotlinc -version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest kotlinc /app/prime-number/kotlin/cmd.kt -include-runtime -d /app/prime-number/kotlin/cmd.jar && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p java -jar /app/prime-number/kotlin/cmd.jar 10000 2>&1'
```
```
info: kotlinc-jvm 1.7.10 (JRE 18-ea+36-Ubuntu-1)

The latest prime number: 104729

real 15.29
user 15.22
sys 0.02
```


### [Crystal](./prime-number/crystal/cmd.cr)
```
docker run mamchyts/benchmark:latest crystal --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest crystal build --release /app/prime-number/crystal/cmd.cr -o /app/prime-number/crystal/cmd.cr_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/crystal/cmd.cr_bin 10000 2>&1'
```
```
Crystal 1.5.0 [994c70b10] (2022-07-06)

LLVM: 10.0.0
Default target: x86_64-unknown-linux-gnu

The latest prime number: 104729

real 14.67
user 14.63
sys 0
```


### [C# (mono)](./prime-number/c%23/cmd.cs)
```
docker run mamchyts/benchmark:latest mono-csc --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest mono-csc /app/prime-number/c#/cmd.cs -out:/app/prime-number/c#/cmd.cs_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p mono /app/prime-number/c#/cmd.cs_bin 10000 2>&1'
```
```
Mono C# compiler version 6.12.0.182

The latest prime number: 104729

real 15.16
user 15.1
sys 0.01
```


### [C# (dotnet)](./prime-number/c%23/cmd.cs)
```
docker run --volume $(pwd):/app mamchyts/benchmark:latest dotnet build --self-contained -a x64 /app/prime-number/c#/ > /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p dotnet run --project /app/prime-number/c#/ 10000 2>&1'
```
```
Welcome to .NET 6.0!
---------------------
SDK Version: 6.0.302

Telemetry
---------
The .NET tools collect usage data in order to help us improve your experience. It is collected by Microsoft and shared with the community. You can opt-out of telemetry by setting the DOTNET_CLI_TELEMETRY_OPTOUT environment variable to '1' or 'true' using your favorite shell.

Read more about .NET CLI Tools telemetry: https://aka.ms/dotnet-cli-telemetry

----------------
Installed an ASP.NET Core HTTPS development certificate.
To trust the certificate run 'dotnet dev-certs https --trust' (Windows and macOS only).
Learn about HTTPS: https://aka.ms/dotnet-https
----------------
Write your first app: https://aka.ms/dotnet-hello-world
Find out what's new: https://aka.ms/dotnet-whats-new
Explore documentation: https://aka.ms/dotnet-docs
Report issues and find source on GitHub: https://github.com/dotnet/core
Use 'dotnet --help' to see available commands or visit: https://aka.ms/dotnet-cli
--------------------------------------------------------------------------------------
The latest prime number: 104729

real 27.39
user 26.33
sys 0.64
```


### [Scala](./prime-number/scala/cmd.scala)
```
docker run mamchyts/benchmark:latest scala -version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest scalac -d /app/prime-number/scala /app/prime-number/scala/cmd.scala && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p scala -classpath /app/prime-number/scala cmd 10000 2>&1'
```
```
Scala code runner version 2.11.12 -- Copyright 2002-2017, LAMP/EPFL

The latest prime number: 104729

real 16.61
user 16.44
sys 0.11
```


### [Elixir](./prime-number/elixir/cmd.exs)
```
docker run mamchyts/benchmark:latest elixir --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p elixir /app/prime-number/elixir/cmd.exs 10000 2>&1'
```
```
Erlang/OTP 24 [erts-12.2.1] [source] [64-bit] [smp:1:1] [ds:1:1:10] [async-threads:1] [jit]

Elixir 1.12.2 (compiled with Erlang/OTP 24)

The latest prime number: 104729

real 33.53
user 33.25
sys 0.2
```


### [Swift](./prime-number/swift/Sources/cmd/main.swift)
```
docker run mamchyts/benchmark:latest swift --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest swift build -c release --package-path /app/prime-number/swift/ && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/swift/.build/release/cmd 10000 2>&1'
```
```
Swift version 5.6.2 (swift-5.6.2-RELEASE)
Target: x86_64-unknown-linux-gnu

[1/1] Planning build
Building for production...
Build complete! (1.11s)
The latest prime number: 104729

real 14.66
user 14.62
sys 0
```


### [Nim](./prime-number/nim/cmd.nim)
```
docker run mamchyts/benchmark:latest nim --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest nim compile -d:release --verbosity:0 -o:/app/prime-number/nim/cmd.nim_bin /app/prime-number/nim/cmd.nim > /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/nim/cmd.nim_bin 10000 2>&1'
```
```
Nim Compiler Version 1.6.6 [Linux: amd64]
Compiled at 2022-05-05
Copyright (c) 2006-2021 by Andreas Rumpf

git hash: 0565a70eab02122ce278b98181c7d1170870865c
active boot switches: -d:release

The latest prime number: 104729

real 22.47
user 22.4
sys 0
```


### [D](./prime-number/d/cmd.d)
```
docker run mamchyts/benchmark:latest dmd --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest dmd -O -release -inline -boundscheck=off -of=/app/prime-number/d/cmd.d_bin /app/prime-number/d/cmd.d && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/d/cmd.d_bin 10000 2>&1'
```
```
DMD64 D Compiler v2.100.0
Copyright (C) 1999-2022 by The D Language Foundation, All Rights Reserved written by Walter Bright

The latest prime number: 104729

real 15.44
user 15.4
sys 0
```


### [Bash](./prime-number/bash/cmd.sh)
```
docker run mamchyts/benchmark:latest bash --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p bash /app/prime-number/bash/cmd.sh 10000 2>&1'
```
```
GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2020 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

The latest prime number: 104729

real 17869.5
user 16777.48
sys 1042.53
```


### [Lisp](./prime-number/lisp/cmd.lisp)
```
docker run mamchyts/benchmark:latest clisp --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p clisp /app/prime-number/lisp/cmd.lisp 10000 2>&1'
```
```
GNU CLISP 2.49.93+ (2018-02-18) (built on lcy02-amd64-055.buildd [127.0.1.1])
Software: GNU C 11.2.0
gcc -g -O2 -ffile-prefix-map=/build/clisp-TmZb5q/clisp-2.49.20210628.gitde01f0f=. -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security -no-integrated-cpp -W -Wswitch -Wcomment -Wpointer-arith -Wreturn-type -Wmissing-declarations -Wimplicit -Wno-sign-compare -Wno-format-nonliteral -Wno-shift-negative-value -O -fwrapv -fno-strict-aliasing -DNO_ASM -DENABLE_UNICODE -DDYNAMIC_FFI -DDYNAMIC_MODULES -Wl,-Bsymbolic-functions -Wl,-z,relro  libgnu.a  -lreadline -lncurses -lffcall  -lsigsegv -lunistring
SAFETY=0 HEAPCODES ONE_FREE_BIT_HEAPCODES WIDE_HARD SPVW_BLOCKS SPVW_MIXED TRIVIALMAP_MEMORY
libsigsegv 2.13
libreadline 8.1
libffcall 2.4
Features:
(READLINE REGEXP WILDCARD SYSCALLS I18N LOOP COMPILER CLOS MOP CLISP ANSI-CL
 COMMON-LISP LISP=CL INTERPRETER LOGICAL-PATHNAMES SOCKETS GENERIC-STREAMS
 SCREEN FFI GETTEXT UNICODE BASE-CHAR=CHARACTER WORD-SIZE=64 PC386 UNIX)
C Modules: (clisp i18n syscalls regexp readline)
Installation directory: /usr/lib/clisp-2.49.93+/
User language: ENGLISH
Machine: X86_64 (X86_64) 0e5dad88a46e [172.17.0.2]

The latest prime number: 104729

real 8879.87
user 8853.65
sys 6.47
```


### [Haxe](./prime-number/haxe/Cmd.hx)
```
docker run mamchyts/benchmark:latest haxe --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p haxe --cwd /app/prime-number/haxe --run Cmd 10000 2>&1'
```
```
4.2.4

The latest prime number: 104729

real 293.02
user 292.25
sys 0.15
```


### [Visual Basic (mono)](./prime-number/visual-basic/cmd.vb)
```
docker run --volume $(pwd):/app mamchyts/benchmark:latest vbnc /app/prime-number/visual-basic/cmd.vb -out:/app/prime-number/visual-basic/cmd.vb_bin && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p mono /app/prime-number/visual-basic/cmd.vb_bin 10000 2>&1'
```
```
Visual Basic.Net Compiler version 0.0.0.5943 (Mono 4.7 - tarball)
Copyright (C) 2004-2010 Rolf Bjarne Kvinge. All rights reserved.

Assembly 'cmd, Version=0.0, Culture=neutral, PublicKeyToken=null' saved successfully to '/app/prime-number/visual-basic/cmd.vb_bin'.
Compilation successful
Compilation took 00:00:01.0823650

The latest prime number: 104729

real 18.11
user 18.05
sys 0.01
```


### [Objective C](./prime-number/objective-c/cmd.m)
```
docker run mamchyts/benchmark:latest g++ --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'g++ /app/prime-number/objective-c/cmd.m -o /app/prime-number/objective-c/cmd.m_bin $(gnustep-config --objc-flags) -lobjc -lgnustep-base' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/objective-c/cmd.m_bin 10000 2>&1'
```
```
g++ (Ubuntu 11.2.0-19ubuntu1) 11.2.0
Copyright (C) 2021 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


2022-08-03 12:05:30.251 cmd.m_bin[6:6] The latest prime number: 104729

real 14.52
user 14.46
sys 0.01
```


### [Groovy](./prime-number/groovy/cmd.groovy)
```
docker run mamchyts/benchmark:latest bash -c 'JAVA_HOME=/usr groovy --version' && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p JAVA_HOME=/usr groovy /app/prime-number/groovy/cmd.groovy 10000 2>&1'
```
```
Groovy Version: 2.4.21 JVM: 18-ea Vendor: Private Build OS: Linux

The latest prime number: 104729

real 221.71
user 219.54
sys 1.92
```


### [Fortran](./prime-number/fortran/cmd.f90)
```
docker run mamchyts/benchmark:latest gfortran --version && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest gfortran /app/prime-number/fortran/cmd.f90 -o /app/prime-number/fortran/cmd.f90_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/fortran/cmd.f90_bin 10000 2>&1'
```
```
GNU Fortran (Ubuntu 11.2.0-19ubuntu1) 11.2.0
Copyright (C) 2021 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


 The latest prime number:       104729

real 20.7
user 20.6
sys 0.01
```


### [PowerShell](./prime-number/power-shell/cmd.ps1)
```
docker run mamchyts/benchmark:latest pwsh --version && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p pwsh /app/prime-number/power-shell/cmd.ps1 10000 2>&1'
```
```
PowerShell 7.2.5

The latest prime number: 104729

real 11051.71
user 10795.68
sys 199.98
```


### [Julia](./prime-number/julia/cmd.ps1)
```
docker run mamchyts/benchmark:latest julia --version && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p julia /app/prime-number/julia/cmd.jl 10000 2>&1'
```
```
julia version 1.7.3

The latest prime number: 104729

real 760.78
user 707.29
sys 52.05
```


### [Processing](./prime-number/processing/processing.pde)
```
echo "Processing 4.0 beta 8 (April 23, 2022)" && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p xvfb-run processing-java --sketch=/app/prime-number/processing/ --run 10000 2>&1'
```
```
Processing 4.0 beta 8 (April 23, 2022)

The latest prime number:  104729
Finished.

real 21.34
user 20.14
sys 0.43
```


### [F#](./prime-number/f%23/cmd.fs)
```
docker run --volume $(pwd):/app mamchyts/benchmark:latest dotnet build --self-contained -a x64 /app/prime-number/f#/ > /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p dotnet run --project /app/prime-number/f#/ 10000 2>&1'
```
```
```


### [Hack](./prime-number/hack/cmd.hack)
```
docker run mamchyts/benchmark:latest hhvm --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time hhvm /app/prime-number/hack/cmd.hack 10000 2>&1'
```
```
HipHop VM 4.170.0 (rel) (non-lowptr)
Compiler: 1665114285_364010525
Repo schema: 1367e9c9d9ccc4bcdcfd1f0d3d4969a9edfaec01
```


## Run all prime number

```
php run/run.php
```
```
----------------------- PHP 5.6 -----------------------
...
----------------------- PHP 7.4 -----------------------
...
----------------------- PHP 8.1 -----------------------
...
```



## Multiply run of prime number

```
php run/run.php 'C/C++' 'Assembler/NASM' 'Rust' 'Lua (LuaJIT -j on)' 'Java'
```
```
----------------------- C/C++ -----------------------
...
----------------------- Assembler/NASM -----------------------
...
----------------------- Rust -----------------------
...
----------------------- Lua (LuaJIT -j on) -----------------------
...
----------------------- Java -----------------------
...
```



## Build and push docker

```
docker build -t benchmark .
docker tag benchmark mamchyts/benchmark:1.3.1
docker tag benchmark mamchyts/benchmark:latest
docker push --all-tags mamchyts/benchmark
```
