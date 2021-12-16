# Benchmark

Test PC - **AWS t3.small**:
```
$ free -h
              total        used        free      shared  buff/cache   available
Mem:          1.9Gi       386Mi       330Mi       4.0Mi       1.2Gi       1.4Gi
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
Model:                           79
Model name:                      Intel(R) Xeon(R) CPU E5-2686 v4 @ 2.30GHz
Stepping:                        1
CPU MHz:                         2300.120
BogoMIPS:                        4600.04
Hypervisor vendor:               Xen
Virtualization type:             full
L1d cache:                       32 KiB
L1i cache:                       32 KiB
L2 cache:                        256 KiB
L3 cache:                        45 MiB
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
Flags:                           fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr
                                 sse sse2 ht syscall nx rdtscp lm constant_tsc rep_good nopl xtopology cpuid tsc_known_freq pni
                                 pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx
                                 f16c rdrand hypervisor lahf_lm abm cpuid_fault invpcid_single pti fsgsbase bmi1 avx2 smep bmi2 erms invpcid xsaveo
```

![https://quickchart.io/sandbox/#%7B%0A%20%20%22type%22%3A%20%22horizontalBar%22%2C%0A%20%20%22data%22%3A%20%7B%0A%20%20%20%20%22labels%22%3A%20%5B%0A%22Lua%20(LuaJIT%20-j%20on)%22%2C%0A%22C%2FC%2B%2B%20(optimized%20compilation)%22%2C%0A%22Rust%20(optimized%20compilation)%22%2C%0A%22Assembler%2FNASM%20(optimized%20compilation)%22%2C%0A%22Crystal%20(optimized%20compilation)%22%2C%0A%22Assembler%2FNASM%22%2C%0A%22Swift%20(optimized%20compilation)%22%2C%0A%22D%20(compiled%20with%20debug)%22%2C%0A%22D%20(optimized%20compilation)%22%2C%0A%22Java%22%2C%0A%22C%2FC%2B%2B%22%2C%0A%22Scala%22%2C%0A%22Kotlin%22%2C%0A%22Node.js%2FJavascript%22%2C%0A%22Ada%22%2C%0A%22Node.js%2FTypeScript%22%2C%0A%22C%23%20(mono)%22%2C%0A%22C%23%20(dotnet)%22%2C%0A%22Dart%20(optimized%20compilation)%22%2C%0A%22Dart%22%2C%0A%22Haskell%20(optimized%20compilation)%22%2C%0A%22Pascal%20(optimized%20compilation)%22%2C%0A%22Go%22%2C%0A%22Nim%20(optimized%20compilation)%22%2C%0A%22Lua%20(LuaJIT%20-j%20off)%22%2C%0A%22Pascal%22%2C%0A%22PHP%20(KPHP)%22%2C%0A%22Crystal%20(compiled%20with%20debug)%22%2C%0A%22Crystal%22%2C%0A%22Nim%22%2C%0A%22Python%202%20(PyPy)%22%2C%0A%22Python%203%20(PyPy)%22%2C%0A%22PHP%208.0%20(JIT)%22%2C%0A%22Elixir%22%2C%0A%22PHP%208.0%22%2C%0A%22PHP%207.4%22%2C%0A%22Lua%22%2C%0A%22Haskell%22%2C%0A%22Rust%22%2C%0A%22PHP%205.6%22%2C%0A%22Haxe%22%2C%0A%22Perl%22%2C%0A%22Python%202%22%2C%0A%22Ruby%203%22%2C%0A%22Ruby%202%22%2C%0A%22Python%203%22%2C%0A%0A%20%20%20%20%5D%2C%0A%20%20%20%20%22datasets%22%3A%20%5B%0A%20%20%20%20%20%20%7B%0A%20%20%20%20%20%20%20%20%22label%22%3A%20%22Execution%20time%20in%20seconds%20(lower%20is%20better)%22%2C%0A%20%20%20%20%20%20%20%20%22backgroundColor%22%3A%20%22rgba(54%2C%20162%2C%20235%2C%200.5)%22%2C%0A%20%20%20%20%20%20%20%20%22borderColor%22%3A%20%22rgb(54%2C%20162%2C%20235)%22%2C%0A%20%20%20%20%20%20%20%20%22borderWidth%22%3A%201%2C%0A%20%20%20%20%20%20%20%20%22data%22%3A%20%5B%0A9.75%2C%0A14.23%2C%0A14.23%2C%0A15.87%2C%0A16.03%2C%0A16.46%2C%0A16.51%2C%0A17.14%2C%0A17.78%2C%0A17.86%2C%0A18.43%2C%0A18.46%2C%0A19.65%2C%0A21.49%2C%0A22.78%2C%0A23.09%2C%0A23.15%2C%0A24.45%2C%0A26.77%2C%0A28.17%2C%0A48.92%2C%0A50.1%2C%0A50.69%2C%0A51.28%2C%0A53.2%2C%0A54.61%2C%0A56.54%2C%0A56.82%2C%0A59.77%2C%0A62.9%2C%0A66.32%2C%0A66.7%2C%0A83.74%2C%0A99.14%2C%0A109.41%2C%0A117.75%2C%0A154.18%2C%0A235.24%2C%0A245.09%2C%0A246.88%2C%0A296.26%2C%0A316.29%2C%0A365.83%2C%0A374.9%2C%0A413.38%2C%0A471.23%2C%0A%20%20%20%20%20%20%20%20%5D%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%5D%0A%20%20%7D%2C%0A%20%20%22options%22%3A%20%7B%0A%20%20%20%20%22plugins%22%3A%20%7B%0A%20%20%20%20%20%20%22datalabels%22%3A%20%7B%0A%20%20%20%20%20%20%20%20%22anchor%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22align%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22color%22%3A%20%22%23000%22%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22responsive%22%3A%20true%2C%0A%20%20%20%20%22legend%22%3A%20%7B%0A%20%20%20%20%20%20%22position%22%3A%20%22top%22%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22title%22%3A%20%7B%0A%20%20%20%20%20%20%22display%22%3A%20false%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D](./chart.png)


![https://quickchart.io/sandbox/#%7B%0A%20%20%22type%22%3A%20%22horizontalBar%22%2C%0A%20%20%22data%22%3A%20%7B%0A%20%20%20%20%22labels%22%3A%20%5B%0A%22Swift%22%2C%0A%22R%22%2C%0A%22Lisp%22%2C%0A%22Bash%22%2C%0A%0A%20%20%20%20%5D%2C%0A%20%20%20%20%22datasets%22%3A%20%5B%0A%20%20%20%20%20%20%7B%0A%20%20%20%20%20%20%20%20%22label%22%3A%20%22Execution%20time%20in%20seconds%20(lower%20is%20better)%22%2C%0A%20%20%20%20%20%20%20%20%22backgroundColor%22%3A%20%22rgba(54%2C%20162%2C%20235%2C%200.5)%22%2C%0A%20%20%20%20%20%20%20%20%22borderColor%22%3A%20%22rgb(54%2C%20162%2C%20235)%22%2C%0A%20%20%20%20%20%20%20%20%22borderWidth%22%3A%201%2C%0A%20%20%20%20%20%20%20%20%22data%22%3A%20%5B%0A950.09%2C%0A1037.07%2C%0A8143.46%2C%0A14748.86%2C%0A%20%20%20%20%20%20%20%20%5D%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%5D%0A%20%20%7D%2C%0A%20%20%22options%22%3A%20%7B%0A%20%20%20%20%22plugins%22%3A%20%7B%0A%20%20%20%20%20%20%22datalabels%22%3A%20%7B%0A%20%20%20%20%20%20%20%20%22anchor%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22align%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22color%22%3A%20%22%23000%22%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22responsive%22%3A%20true%2C%0A%20%20%20%20%22legend%22%3A%20%7B%0A%20%20%20%20%20%20%22position%22%3A%20%22top%22%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22title%22%3A%20%7B%0A%20%20%20%20%20%20%22display%22%3A%20false%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D](./chart-slowest.png)


## Single run of prime number benchmark


### [PHP 5.6](./prime-number/php/cmd.php)
```
docker run mamchyts/benchmark:latest php5.6 -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p php5.6 /app/prime-number/php/cmd.php 10000 2>&1'
```
```
PHP 5.6.40-57+ubuntu21.04.1+deb.sury.org+1 (cli)
Copyright (c) 1997-2016 The PHP Group
Zend Engine v2.6.0, Copyright (c) 1998-2016 Zend Technologies
    with Zend OPcache v7.0.6-dev, Copyright (c) 1999-2016, by Zend Technologies

The latest prime number: 104729

real 289.16
user 288.45
sys 0.01
```


### [PHP 7.4](./prime-number/php/cmd.php)
```
docker run mamchyts/benchmark:latest php7.4 -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p php7.4 /app/prime-number/php/cmd.php 10000 2>&1'
```
```
PHP 7.4.26 (cli) (built: Nov 22 2021 09:48:36) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.26, Copyright (c), by Zend Technologies

The latest prime number: 104729

real 141.25
user 140.85
sys 0.01
```


### [PHP 8.0](./prime-number/php/cmd.php)
```
docker run mamchyts/benchmark:latest php8.0 -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p php8.0 /app/prime-number/php/cmd.php 10000 2>&1'
```
```
PHP 8.0.13 (cli) (built: Nov 22 2021 09:51:03) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.13, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.13, Copyright (c), by Zend Technologies

The latest prime number: 104729

real 127.01
user 126.67
sys 0
```


### [PHP 8.0 (JIT)](./prime-number/php/cmd.php)
```
docker run mamchyts/benchmark:latest php8.0 -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p php8.0 -dopcache.enable_cli=1 -dopcache.jit_buffer_size=10M /app/prime-number/php/cmd.php 10000 2>&1'
```
```
PHP 8.0.13 (cli) (built: Nov 22 2021 09:51:03) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.13, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.13, Copyright (c), by Zend Technologies

The latest prime number: 104729

real 99.88
user 99.61
sys 0
```


### [PHP 8.1](./prime-number/php/cmd.php)
```
docker run mamchyts/benchmark:latest php8.1 -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p php8.1 /app/prime-number/php/cmd.php 10000 2>&1'
```
```
PHP 8.1.0 (cli) (built: Nov 25 2021 20:22:22) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.0, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.0, Copyright (c), by Zend Technologies

The latest prime number: 104729

real 125.56
user 125.2
sys 0.01
```


### [PHP 8.1 (JIT)](./prime-number/php/cmd.php)
```
docker run mamchyts/benchmark:latest php8.1 -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p php8.1 -dopcache.enable_cli=1 -dopcache.jit_buffer_size=10M /app/prime-number/php/cmd.php 10000 2>&1'
```
```
PHP 8.1.0 (cli) (built: Nov 25 2021 20:22:22) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.0, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.0, Copyright (c), by Zend Technologies

The latest prime number: 104729

real 99.87
user 99.61
sys 0.01
```


### [PHP (KPHP)](./prime-number/php/cmd.php)
```
docker run mamchyts/benchmark:latest kphp --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest kphp --mode=cli /app/prime-number/php/cmd.php -o /app/prime-number/php/cmd.php_bin &> /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/php/cmd.php_bin 10000 2>&1'
```
```
kphp2cpp compiled at Nov  8 2021 10:14:43 UTC by gcc 9.3.0 64-bit after commit ccfc8a682ff95acad8d3cb41db24e273f4101945 build 2501

The latest prime number: 104729
real 62.64
user 62.27
sys 0.00
```


### [Node.js/Javascript](./prime-number/javascript/cmd.js)
```
docker run mamchyts/benchmark:latest nodejs --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p nodejs /app/prime-number/javascript/cmd.js 10000 2>&1'
```
```
v12.21.0

The latest prime number: 104729

real 30.97
user 30.82
sys 0.01
```


### [Node.js/TypeScript](./prime-number/typescript/cmd.ts)
```
docker run mamchyts/benchmark:latest ts-node --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p ts-node /app/prime-number/typescript/cmd.ts 10000 2>&1'
```
```
v10.4.0

The latest prime number: 104729

real 33.51
user 33.23
sys 0.1
```


### [Python 2](./prime-number/python/cmd.py2)
```
docker run mamchyts/benchmark:latest python2 --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p python2 /app/prime-number/python/cmd.py2 10000 2>&1'
```
```
Python 2.7.18

The latest prime number:  104729

real 428.05
user 426.94
sys 0.01
```


### [Python 2 (PyPy)](./prime-number/python/cmd.py2)
```
docker run mamchyts/benchmark:latest pypy --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p pypy /app/prime-number/python/cmd.py2 10000 2>&1'
```
```
Python 2.7.18 (7.3.3+dfsg-1, Nov 22 2020, 05:23:32)
[PyPy 7.3.3 with GCC 10.2.0]

The latest prime number:  104729

real 84.13
user 83.81
sys 0.04
```


### [Python 3](./prime-number/python/cmd.py3)
```
docker run mamchyts/benchmark:latest python3 --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p python3 /app/prime-number/python/cmd.py3 10000 2>&1'
```
```
Python 3.9.5

The latest prime number:  104729

real 540.43
user 539.06
sys 0
```


### [Python 3 (PyPy)](./prime-number/python/cmd.py3)
```
docker run mamchyts/benchmark:latest pypy3 --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p pypy3 /app/prime-number/python/cmd.py3 10000 2>&1'
```
```
Python 3.6.12 (7.3.3+dfsg-3, Feb 26 2021, 04:58:43)
[PyPy 7.3.3 with GCC 10.2.1 20210220]

The latest prime number:  104729

real 82.83
user 82.54
sys 0.04
```


### [C/C++](./prime-number/c++/cmd.cpp)
```
docker run mamchyts/benchmark:latest g++ --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest g++ -O0 /app/prime-number/c++/cmd.cpp -o /app/prime-number/c++/cmd.cpp_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/c++/cmd.cpp_bin 10000 2>&1'
```
```
g++ (Ubuntu 10.3.0-1ubuntu1) 10.3.0
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


The latest prime number: 104729

real 22.59
user 22.52
sys 0
```


### [C/C++ (optimized compilation)](./prime-number/c++/cmd.cpp)
```
docker run mamchyts/benchmark:latest g++ --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest g++ -Ofast /app/prime-number/c++/cmd.cpp -o /app/prime-number/c++/cmd.cpp_opt_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/c++/cmd.cpp_opt_bin 10000 2>&1'
```
```
g++ (Ubuntu 10.3.0-1ubuntu1) 10.3.0
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


The latest prime number: 104729

real 16.41
user 16.37
sys 0
```


### [Assembler/NASM](./prime-number/assembler/cmd.asm)
```
docker run mamchyts/benchmark:latest nasm --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest nasm -f elf -O0 /app/prime-number/assembler/cmd.asm && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest ld -O0 -m elf_i386 /app/prime-number/assembler/cmd.o -o /app/prime-number/assembler/cmd.asm_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/assembler/cmd.asm_bin 10000 2>&1'
```
```
NASM version 2.15.05

The latest prime number: 000104729

real 24.15
user 24.09
sys 0
```


### [Assembler/NASM (optimized compilation)](./prime-number/assembler/cmd.asm)
```
docker run mamchyts/benchmark:latest nasm --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest nasm -f elf -Ox /app/prime-number/assembler/cmd.asm && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest ld -O3 -m elf_i386 /app/prime-number/assembler/cmd.o -o /app/prime-number/assembler/cmd.asm_opt_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/assembler/cmd.asm_opt_bin 10000 2>&1'
```
```
NASM version 2.15.05

The latest prime number: 000104729

real 24.02
user 23.96
sys 0
```


### [Pascal](./prime-number/pascal/cmd.pas)
```
docker run mamchyts/benchmark:latest fpc -iW 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest fpc -O- /app/prime-number/pascal/cmd.pas -o/app/prime-number/pascal/cmd.pas_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/pascal/cmd.pas_bin 10000 2>&1'
```
```
3.2.0+dfsg-12

Free Pascal Compiler version 3.2.0+dfsg-12 [2021/01/25] for x86_64
Copyright (c) 1993-2020 by Florian Klaempfl and others
Target OS: Linux for x86-64
Compiling /app/prime-number/pascal/cmd.pas
Linking /app/prime-number/pascal/cmd.pas_bin
30 lines compiled, 0.1 sec
The latest prime number: 104729

real 59.89
user 59.73
sys 0
```


### [Pascal (optimized compilation)](./prime-number/pascal/cmd.pas)
```
docker run mamchyts/benchmark:latest fpc -iW 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest fpc -O3 /app/prime-number/pascal/cmd.pas -o/app/prime-number/pascal/cmd.pas_opt_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/pascal/cmd.pas_opt_bin 10000 2>&1'
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

real 57.06
user 56.9
sys 0
```


### [Go](./prime-number/go/cmd.go)
```
docker run mamchyts/benchmark:latest go version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest go build -o /app/prime-number/go/cmd.go_bin /app/prime-number/go/cmd.go && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/go/cmd.go_bin 10000 2>&1'
```
```
go version go1.16.2 linux/amd64

The latest prime number: 104729

real 56.93
user 56.78
sys 0
```


### [Ruby 2](./prime-number/ruby/cmd.rb)
```
docker run mamchyts/benchmark:latest /root/.rbenv/versions/2.7.5/bin/ruby --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /root/.rbenv/versions/2.7.5/bin/ruby /app/prime-number/ruby/cmd.rb 10000 2>&1'
```
```
ruby 2.7.5p203 (2021-11-24 revision f69aeb8314) [x86_64-linux]

The latest prime number: 104729

real 516.11
user 514.76
sys 0.01
```


### [Ruby 3](./prime-number/ruby/cmd.rb)
```
docker run mamchyts/benchmark:latest /root/.rbenv/versions/3.0.3/bin/ruby --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /root/.rbenv/versions/3.0.3/bin/ruby /app/prime-number/ruby/cmd.rb 10000 2>&1'
```
```
ruby 3.0.3p157 (2021-11-24 revision 3fb7d2cadc) [x86_64-linux]

The latest prime number: 104729

real 458.42
user 457.2
sys 0.02
```


### [Java](./prime-number/java/cmd.java)
```
docker run mamchyts/benchmark:latest java --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest javac /app/prime-number/java/cmd.java && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p java -classpath /app/prime-number/java/ cmd 10000 2>&1'
```
```
openjdk 16.0.1 2021-04-20
OpenJDK Runtime Environment (build 16.0.1+9-Ubuntu-1)
OpenJDK 64-Bit Server VM (build 16.0.1+9-Ubuntu-1, mixed mode, sharing)

The latest prime number: 104729

real 20.62
user 20.55
sys 0.01
```


### [Rust](./prime-number/rust/cmd.rs)
```
docker run mamchyts/benchmark:latest rustc --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest rustc /app/prime-number/rust/cmd.rs -o /app/prime-number/rust/cmd.rs_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/rust/cmd.rs_bin 10000 2>&1'
```
```
rustc 1.53.0

The latest prime number: 104729

real 148.78
user 148.36
sys 0
```


### [Rust (optimized compilation)](./prime-number/rust/cmd.rs)
```
docker run mamchyts/benchmark:latest rustc --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest rustc -C opt-level=3 /app/prime-number/rust/cmd.rs -o /app/prime-number/rust/cmd.rs_opt_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/rust/cmd.rs_opt_bin 10000 2>&1'
```
```
rustc 1.53.0

The latest prime number: 104729

real 16.42
user 16.37
sys 0
```


### [R](./prime-number/r/cmd.r)
```
docker run mamchyts/benchmark:latest Rscript --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p Rscript --vanilla /app/prime-number/r/cmd.r 10000 2>&1'
```
```
R scripting front-end version 4.0.4 (2021-02-15)

[1] "The latest prime number:  104729"

real 1163.92
user 1160.64
sys 0.05
```


### [Dart](./prime-number/dart/cmd.dart)
```
docker run mamchyts/benchmark:latest dart --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p dart run /app/prime-number/dart/cmd.dart 10000 2>&1'
```
```
Dart SDK version: 2.14.4 (stable) (Unknown timestamp) on "linux_x64"

The latest prime number: 104729

real 30.11
user 27.82
sys 0.12
```


### [Dart (optimized compilation)](./prime-number/dart/cmd.dart)
```
docker run mamchyts/benchmark:latest dart --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest dart --disable-analytics compile exe /app/prime-number/dart/cmd.dart -o /app/prime-number/dart/cmd.dart_opt_bin &> /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/dart/cmd.dart_opt_bin 10000 2>&1'
```
```
Dart SDK version: 2.14.4 (stable) (Unknown timestamp) on "linux_x64"

The latest prime number: 104729

real 31.8
user 30.71
sys 0
```


### [Perl](./prime-number/perl/cmd.pl)
```
docker run mamchyts/benchmark:latest perl --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p perl /app/prime-number/perl/cmd.pl 10000 2>&1'
```
```
This is perl 5, version 32, subversion 1 (v5.32.1) built for x86_64-linux-gnu-thread-multi
(with 47 registered patches, see perl -V for more detail)

Copyright 1987-2021, Larry Wall

Perl may be copied only under the terms of either the Artistic License or the
GNU General Public License, which may be found in the Perl 5 source kit.

Complete documentation for Perl, including FAQ lists, should be found on
this system using "man perl" or "perldoc perl".  If you have access to the
Internet, point your browser at http://www.perl.org/, the Perl Home Page.


The latest prime number: 104729

real 385.42
user 384.43
sys 0
```


### [Lua](./prime-number/lua/cmd.lua)
```
docker run mamchyts/benchmark:latest lua -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p lua /app/prime-number/lua/cmd.lua 10000 2>&1'
```
```
Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio

The latest prime number:        104729

real 184.06
user 183.56
sys 0
```


### [Lua (LuaJIT -j on)](./prime-number/lua/cmd.lua)
```
docker run mamchyts/benchmark:latest luajit -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p luajit -j on /app/prime-number/lua/cmd.lua 10000 2>&1'
```
```
LuaJIT 2.1.0-beta3 -- Copyright (C) 2005-2017 Mike Pall. http://luajit.org/

The latest prime number:        104729

real 10.6
user 10.57
sys 0
```


### [Lua (LuaJIT -j off)](./prime-number/lua/cmd.lua)
```
docker run mamchyts/benchmark:latest luajit -v 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p luajit -j off /app/prime-number/lua/cmd.lua 10000 2>&1'
```
```
LuaJIT 2.1.0-beta3 -- Copyright (C) 2005-2017 Mike Pall. http://luajit.org/

The latest prime number:        104729

real 64.46
user 64.3
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

real 20.55
user 20.48
sys 0
```


### [Haskell](./prime-number/haskell/cmd.hs)
```
docker run mamchyts/benchmark:latest ghc --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest ghc /app/prime-number/haskell/cmd.hs -o /app/prime-number/haskell/cmd.hs_bin &> /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/haskell/cmd.hs_bin 10000 2>&1'
```
```
The Glorious Glasgow Haskell Compilation System, version 8.8.4

The latest prime number: 104729

real 274.32
user 272.74
sys 0.82
```


### [Haskell (optimized compilation)](./prime-number/haskell/cmd.hs)
```
docker run mamchyts/benchmark:latest ghc --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest ghc -O /app/prime-number/haskell/cmd.hs -o /app/prime-number/haskell/cmd.hs_opt_bin &> /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/haskell/cmd.hs_opt_bin 10000 2>&1'
```
```
The Glorious Glasgow Haskell Compilation System, version 8.8.4

The latest prime number: 104729

real 57.24
user 57.08
sys 0
```


### [Kotlin](./prime-number/kotlin/cmd.kt)
```
docker run mamchyts/benchmark:latest /root/kotlinc/bin/kotlinc -version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest /root/kotlinc/bin/kotlinc /app/prime-number/kotlin/cmd.kt -include-runtime -d /app/prime-number/kotlin/cmd.jar && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p java -jar /app/prime-number/kotlin/cmd.jar 10000 2>&1'
```
```
info: kotlinc-jvm 1.5.32 (JRE 16.0.1+9-Ubuntu-1)

The latest prime number: 104729

real 24.9
user 24.81
sys 0.01
```


### [Crystal](./prime-number/crystal/cmd.cr)
```
docker run mamchyts/benchmark:latest crystal --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p crystal /app/prime-number/crystal/cmd.cr 10000 2>&1'
```
```
Crystal 1.2.2 [6529d725a] (2021-11-10)

LLVM: 10.0.0
Default target: x86_64-unknown-linux-gnu

The latest prime number: 104729

real 62.89
user 62.33
sys 0.32
```


### [Crystal (compiled with debug)](./prime-number/crystal/cmd.cr)
```
docker run mamchyts/benchmark:latest crystal --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest crystal build /app/prime-number/crystal/cmd.cr -o /app/prime-number/crystal/cmd.cr_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/crystal/cmd.cr_bin 10000 2>&1'
```
```
Crystal 1.2.2 [6529d725a] (2021-11-10)

LLVM: 10.0.0
Default target: x86_64-unknown-linux-gnu

The latest prime number: 104729

real 58.82
user 58.66
sys 0
```


### [Crystal (optimized compilation)](./prime-number/crystal/cmd.cr)
```
docker run mamchyts/benchmark:latest crystal --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest crystal build --release /app/prime-number/crystal/cmd.cr -o /app/prime-number/crystal/cmd.cr_opt_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/crystal/cmd.cr_opt_bin 10000 2>&1'
```
```
Crystal 1.2.2 [6529d725a] (2021-11-10)

LLVM: 10.0.0
Default target: x86_64-unknown-linux-gnu

The latest prime number: 104729

real 18.5
user 18.43
sys 0
```


### [C# (mono)](./prime-number/c%23/cmd.cs)
```
docker run mamchyts/benchmark:latest mono-csc --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest mono-csc /app/prime-number/c#/cmd.cs -out:/app/prime-number/c#/cmd.cs_bin && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p mono /app/prime-number/c#/cmd.cs_bin 10000 2>&1'
```
```
Mono C# compiler version 6.12.0.122

The latest prime number: 104729

real 22.53
user 22.47
sys 0
```


### [C# (dotnet)](./prime-number/c%23/cmd.cs)
```
docker run mamchyts/benchmark:latest dotnet --version && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest dotnet build --runtime linux-x64 /app/prime-number/c#/ &> /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p dotnet run -p /app/prime-number/c#/ 10000 2>&1'
```
```
5.0.403


Welcome to .NET 5.0!
---------------------
SDK Version: 5.0.403

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

real 28.07
user 27.21
sys 0.25
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

real 21.56
user 21.4
sys 0.08
```


### [Elixir](./prime-number/elixir/cmd.exs)
```
docker run mamchyts/benchmark:latest elixir --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p elixir /app/prime-number/elixir/cmd.exs 10000 2>&1'
```
```
Erlang/OTP 23 [erts-11.1.8] [source] [64-bit] [smp:1:1] [ds:1:1:10] [async-threads:1]

Elixir 1.10.3 (compiled with Erlang/OTP 22)

The latest prime number: 104729

real 120.53
user 119.3
sys 0.87
```


### [Swift](./prime-number/swift/Sources/cmd/main.swift)
```
docker run mamchyts/benchmark:latest /root/swift-5.5.1-RELEASE-ubuntu20.04/usr/bin/swift --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest /root/swift-5.5.1-RELEASE-ubuntu20.04/usr/bin/swift build --package-path /app/prime-number/swift/ && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/swift/.build/debug/cmd 10000 2>&1'
```
```
Swift version 5.5.1 (swift-5.5.1-RELEASE)
Target: x86_64-unknown-linux-gnu

[1/1] Planning build
[0/0] Build complete!
The latest prime number: 104729

real 640.49
user 638.83
sys 0
```


### [Swift (optimized compilation)](./prime-number/swift/Sources/cmd/main.swift)
```
docker run mamchyts/benchmark:latest /root/swift-5.5.1-RELEASE-ubuntu20.04/usr/bin/swift --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest /root/swift-5.5.1-RELEASE-ubuntu20.04/usr/bin/swift build -c release --package-path /app/prime-number/swift/ && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/swift/.build/release/cmd 10000 2>&1'
```
```
Swift version 5.5.1 (swift-5.5.1-RELEASE)
Target: x86_64-unknown-linux-gnu

[1/1] Planning build
[0/0] Build complete!
The latest prime number: 104729

real 24.63
user 24.55
sys 0sys 0
```


### [Nim](./prime-number/nim/cmd.nim)
```
docker run mamchyts/benchmark:latest nim --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest nim compile --verbosity:0 -o:/app/prime-number/nim/cmd.nim_bin /app/prime-number/nim/cmd.nim &> /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/nim/cmd.nim_bin 10000 2>&1'
```
```
Nim Compiler Version 1.4.2 [Linux: amd64]
Compiled at 2020-12-02
Copyright (c) 2006-2020 by Andreas Rumpf

active boot switches: -d:release

The latest prime number: 104729

real 73.94
user 73.73
sys 0
```


### [Nim (optimized compilation)](./prime-number/nim/cmd.nim)
```
docker run mamchyts/benchmark:latest nim --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest nim compile -d:release --verbosity:0 -o:/app/prime-number/nim/cmd.nim_opt_bin /app/prime-number/nim/cmd.nim &> /dev/null && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/nim/cmd.nim_opt_bin 10000 2>&1'
```
```
Nim Compiler Version 1.4.2 [Linux: amd64]
Compiled at 2020-12-02
Copyright (c) 2006-2020 by Andreas Rumpf

active boot switches: -d:release

The latest prime number: 104729

real 60.59
user 60.4
sys 0
```


### [D (compiled with debug)](./prime-number/d/cmd.d)
```
docker run mamchyts/benchmark:latest dmd --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest dmd -debug -of=/app/prime-number/d/cmd.d_bin /app/prime-number/d/cmd.d && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/d/cmd.d_bin 10000 2>&1'
```
```
DMD64 D Compiler v2.098.0
Copyright (C) 1999-2021 by The D Language Foundation, All Rights Reserved written by Walter Bright

The latest prime number: 104729

real 22.18
user 22.11
sys 0
```


### [D (optimized compilation)](./prime-number/d/cmd.d)
```
docker run mamchyts/benchmark:latest dmd --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest dmd -O -release -inline -boundscheck=off -of=/app/prime-number/d/cmd.d_opt_bin /app/prime-number/d/cmd.d && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p /app/prime-number/d/cmd.d_opt_bin 10000 2>&1'
```
```
DMD64 D Compiler v2.098.0
Copyright (C) 1999-2021 by The D Language Foundation, All Rights Reserved written by Walter Bright

The latest prime number: 104729

real 19.73
user 19.68
sys 0
```


### [Bash](./prime-number/bash/cmd.sh)
```
docker run mamchyts/benchmark:latest bash --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p bash /app/prime-number/bash/cmd.sh 10000 2>&1'
```
```
GNU bash, version 5.1.4(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2020 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

The latest prime number: 104729

real 14748.86
user 14242.45
sys 902.84
```


### [Lisp](./prime-number/lisp/cmd.lisp)
```
docker run mamchyts/benchmark:latest clisp --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p clisp /app/prime-number/lisp/cmd.lisp 10000 2>&1'
```
```
GNU CLISP 2.49.92 (2018-02-18) (built on lgw01-amd64-022.buildd [127.0.1.1])
Software: GNU C 9.2.1 20190905
gcc -g -O2 -fdebug-prefix-map=/build/clisp-jJhQLN/clisp-2.49.20180218+really2.49.92=. -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security -no-integrated-cpp -W -Wswitch -Wcomment -Wpointer-arith -Wreturn-type -Wmissing-declarations -Wimplicit -Wno-sign-compare -Wno-format-nonliteral -Wno-shift-negative-value -O -fwrapv -fno-strict-aliasing -DNO_ASM -DENABLE_UNICODE -DDYNAMIC_FFI -DDYNAMIC_MODULES -Wl,-Bsymbolic-functions -Wl,-z,relro  libgnu.a  -lreadline -lncurses -ldl -lffcall  -lsigsegv -lunistring
SAFETY=0 HEAPCODES ONE_FREE_BIT_HEAPCODES WIDE_HARD GENERATIONAL_GC SPVW_BLOCKS SPVW_MIXED TRIVIALMAP_MEMORY
libsigsegv 2.12
libreadline 8.0
libffcall 2.1
Features:
(READLINE REGEXP WILDCARD SYSCALLS I18N LOOP COMPILER CLOS MOP CLISP ANSI-CL
 COMMON-LISP LISP=CL INTERPRETER LOGICAL-PATHNAMES SOCKETS GENERIC-STREAMS
 SCREEN FFI GETTEXT UNICODE BASE-CHAR=CHARACTER WORD-SIZE=64 PC386 UNIX)
C Modules: (clisp i18n syscalls regexp readline)
Installation directory: /usr/lib/clisp-2.49.92/
User language: ENGLISH
Machine: X86_64 (X86_64) c771609f16c8 [172.17.0.2]

The latest prime number: 104729

real 8143.46
user 8139.79
sys 3.09
```


### [Haxe](./prime-number/haxe/Cmd.hx)
```
docker run mamchyts/benchmark:latest haxe --version 2>&1 && echo '' && \
docker run --volume $(pwd):/app mamchyts/benchmark:latest bash -c 'time -p haxe --cwd /app/prime-number/haxe --run Cmd 10000 2>&1'
```
```
4.1.5

The latest prime number: 104729

real 630.72
user 628.20
sys 0.03
```


## Run all prime number mamchyts/benchmark:latests

```
php run/run.php
```
```
----------------------- PHP 5.6 -----------------------
...
----------------------- PHP 7.4 -----------------------
...
----------------------- PHP 8.0 -----------------------
...
```


## Multiply run of prime number mamchyts/benchmark:latest

```
php run/run.php 'C/C++' 'C/C++ (optimized compilation)' 'Assembler/NASM' 'Assembler/NASM (optimized compilation)'
```
```
----------------------- C/C++ -----------------------
...
----------------------- C/C++ (optimized compilation) -----------------------
...
----------------------- Assembler/NASM -----------------------
...
----------------------- Assembler/NASM (optimized compilation) -----------------------
...
```


## Build and push docker

```
docker build -t mamchyts/benchmark:latest .
docker tag mamchyts/benchmark:latest mamchyts/benchmark:1.1.1
docker tag mamchyts/benchmark:latest mamchyts/benchmark:latest
docker push --all-tags mamchyts/benchmark
```
