# Benchmark

Test PC - **AWS t3.small**:
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
CPU(s):                          2
On-line CPU(s) list:             0,1
Thread(s) per core:              2
Core(s) per socket:              1
Socket(s):                       1
NUMA node(s):                    1
Vendor ID:                       GenuineIntel
CPU family:                      6
Model:                           85
Model name:                      Intel(R) Xeon(R) Platinum 8259CL CPU @ 2.50GHz
Stepping:                        7
CPU MHz:                         2499.996
BogoMIPS:                        4999.99
Hypervisor vendor:               KVM
Virtualization type:             full
L1d cache:                       32 KiB
L1i cache:                       32 KiB
L2 cache:                        1 MiB
L3 cache:                        35.8 MiB
NUMA node0 CPU(s):               0,1
Vulnerability Itlb multihit:     KVM: Mitigation: VMX unsupported
Vulnerability L1tf:              Mitigation; PTE Inversion
Vulnerability Mds:               Vulnerable: Clear CPU buffers attempted, no microcode; SMT Host state unknown
Vulnerability Meltdown:          Mitigation; PTI
Vulnerability Spec store bypass: Vulnerable
Vulnerability Spectre v1:        Mitigation; usercopy/swapgs barriers and __user pointer sanitization
Vulnerability Spectre v2:        Mitigation; Full generic retpoline, STIBP disabled, RSB filling
Vulnerability Srbds:             Not affected
Vulnerability Tsx async abort:   Not affected
Flags:                           fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss
                                 ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology nonstop_tsc cpuid tsc_known_freq
                                  pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx
                                  f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti fsgsbase tsc_adjust bmi1 avx2 sm
                                 ep bmi2 erms invpcid mpx avx512f avx512dq rdseed adx smap clflushopt clwb avx512cd avx512bw avx512vl
                                 xsaveopt xsavec xgetbv1 xsaves ida arat pku ospke
```

![https://quickchart.io/sandbox/#%7B%0A%20%20%22type%22%3A%20%22horizontalBar%22%2C%0A%20%20%22data%22%3A%20%7B%0A%20%20%20%20%22labels%22%3A%20%5B%0A%20%20%20%20%20%20%22Lua%20(LuaJIT%20-j%20on)%22%2C%0A%20%20%20%20%20%20%22Rust%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Assembler%2FNASM%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Crystal%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Swift%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Assembler%2FNASM%22%2C%0A%20%20%20%20%20%20%22Java%22%2C%0A%20%20%20%20%20%20%22Scala%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%22%2C%0A%20%20%20%20%20%20%22Kotlin%22%2C%0A%20%20%20%20%20%20%22Node.js%2FJavascript%22%2C%0A%20%20%20%20%20%20%22Ada%22%2C%0A%20%20%20%20%20%20%22C%23%20(mono)%22%2C%0A%20%20%20%20%20%20%22Node.js%2FTypeScript%22%2C%0A%20%20%20%20%20%20%22C%23%20(dotnet)%22%2C%0A%20%20%20%20%20%20%22Dart%20(compiled)%22%2C%0A%20%20%20%20%20%20%22Dart%22%2C%0A%20%20%20%20%20%20%22Haskell%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Pascal%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Go%22%2C%0A%20%20%20%20%20%20%22Nim%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Lua%20(LuaJIT%20-j%20off)%22%2C%0A%20%20%20%20%20%20%22Pascal%22%2C%0A%20%20%20%20%20%20%22Crystal%20(compiled)%22%2C%0A%20%20%20%20%20%20%22PHP%20(KPHP)%22%2C%0A%20%20%20%20%20%20%22Crystal%22%2C%0A%20%20%20%20%20%20%22Python%202%20(PyPy)%22%2C%0A%20%20%20%20%20%20%22Python%203%20(PyPy)%22%2C%0A%20%20%20%20%20%20%22Nim%20(compiled)%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%20(JIT)%22%2C%0A%20%20%20%20%20%20%22Elixir%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%22%2C%0A%20%20%20%20%20%20%22PHP%207.4%22%2C%0A%20%20%20%20%20%20%22Lua%22%2C%0A%20%20%20%20%20%20%22Rust%22%2C%0A%20%20%20%20%20%20%22Haskell%22%2C%0A%20%20%20%20%20%20%22PHP%205.6%22%2C%0A%20%20%20%20%20%20%22Perl%22%2C%0A%20%20%20%20%20%20%22Python%202%22%2C%0A%20%20%20%20%20%20%22Ruby%203%22%2C%0A%20%20%20%20%20%20%22Ruby%202%22%2C%0A%20%20%20%20%20%20%22Python%203%22%2C%0A%20%20%20%20%20%20%22Swift%20(compiled)%22%2C%0A%20%20%20%20%20%20%22R%22%0A%20%20%20%20%5D%2C%0A%20%20%20%20%22datasets%22%3A%20%5B%0A%20%20%20%20%20%20%7B%0A%20%20%20%20%20%20%20%20%22label%22%3A%20%22Execution%20time%20in%20seconds%20(lower%20is%20better)%22%2C%0A%20%20%20%20%20%20%20%20%22backgroundColor%22%3A%20%22rgba(54%2C%20162%2C%20235%2C%200.5)%22%2C%0A%20%20%20%20%20%20%20%20%22borderColor%22%3A%20%22rgb(54%2C%20162%2C%20235)%22%2C%0A%20%20%20%20%20%20%20%20%22borderWidth%22%3A%201%2C%0A%20%20%20%20%20%20%20%20%22data%22%3A%20%5B%0A%20%20%20%20%20%20%20%20%20%209.59%2C%0A%20%20%20%20%20%20%20%20%20%2014%2C%0A%20%20%20%20%20%20%20%20%20%2014.04%2C%0A%20%20%20%20%20%20%20%20%20%2015.68%2C%0A%20%20%20%20%20%20%20%20%20%2015.72%2C%0A%20%20%20%20%20%20%20%20%20%2016.24%2C%0A%20%20%20%20%20%20%20%20%20%2016.27%2C%0A%20%20%20%20%20%20%20%20%20%2017.56%2C%0A%20%20%20%20%20%20%20%20%20%2018.12%2C%0A%20%20%20%20%20%20%20%20%20%2018.17%2C%0A%20%20%20%20%20%20%20%20%20%2019.26%2C%0A%20%20%20%20%20%20%20%20%20%2021.2%2C%0A%20%20%20%20%20%20%20%20%20%2022.28%2C%0A%20%20%20%20%20%20%20%20%20%2022.71%2C%0A%20%20%20%20%20%20%20%20%20%2022.71%2C%0A%20%20%20%20%20%20%20%20%20%2024.01%2C%0A%20%20%20%20%20%20%20%20%20%2024.92%2C%0A%20%20%20%20%20%20%20%20%20%2026.72%2C%0A%20%20%20%20%20%20%20%20%20%2048.02%2C%0A%20%20%20%20%20%20%20%20%20%2049.34%2C%0A%20%20%20%20%20%20%20%20%20%2050.01%2C%0A%20%20%20%20%20%20%20%20%20%2050.68%2C%0A%20%20%20%20%20%20%20%20%20%2052.22%2C%0A%20%20%20%20%20%20%20%20%20%2053.88%2C%0A%20%20%20%20%20%20%20%20%20%2055.61%2C%0A%20%20%20%20%20%20%20%20%20%2055.8%2C%0A%20%20%20%20%20%20%20%20%20%2058.55%2C%0A%20%20%20%20%20%20%20%20%20%2065.37%2C%0A%20%20%20%20%20%20%20%20%20%2065.76%2C%0A%20%20%20%20%20%20%20%20%20%2066.46%2C%0A%20%20%20%20%20%20%20%20%20%2082.72%2C%0A%20%20%20%20%20%20%20%20%20%2097.44%2C%0A%20%20%20%20%20%20%20%20%20%20110.61%2C%0A%20%20%20%20%20%20%20%20%20%20116.27%2C%0A%20%20%20%20%20%20%20%20%20%20151.43%2C%0A%20%20%20%20%20%20%20%20%20%20228.52%2C%0A%20%20%20%20%20%20%20%20%20%20231%2C%0A%20%20%20%20%20%20%20%20%20%20233.85%2C%0A%20%20%20%20%20%20%20%20%20%20312.44%2C%0A%20%20%20%20%20%20%20%20%20%20361.97%2C%0A%20%20%20%20%20%20%20%20%20%20369.09%2C%0A%20%20%20%20%20%20%20%20%20%20419.41%2C%0A%20%20%20%20%20%20%20%20%20%20446.52%2C%0A%20%20%20%20%20%20%20%20%20%20933.37%2C%0A%20%20%20%20%20%20%20%20%20%201021.93%0A%20%20%20%20%20%20%20%20%5D%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%5D%0A%20%20%7D%2C%0A%20%20%22options%22%3A%20%7B%0A%20%20%20%20%22plugins%22%3A%20%7B%0A%20%20%20%20%20%20%22datalabels%22%3A%20%7B%0A%20%20%20%20%20%20%20%20%22anchor%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22align%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22color%22%3A%20%22%23000%22%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22responsive%22%3A%20true%2C%0A%20%20%20%20%22legend%22%3A%20%7B%0A%20%20%20%20%20%20%22position%22%3A%20%22top%22%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22title%22%3A%20%7B%0A%20%20%20%20%20%20%22display%22%3A%20false%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D](./chart.png)


## Single run of prime number benchmark


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

real 233.85
user 233.83
sys 0
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

real 116.27
user 116.25
sys 0
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

real 110.61
user 110.6
sys 0
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

real 82.72
user 82.7
sys 0
```


### [PHP (KPHP)](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark kphp --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark kphp --mode=cli /app/prime-number/php/cmd.php -o /app/prime-number/php/cmd.php_bin 2> /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/php/cmd.php_bin 10000'
```
```
kphp2cpp compiled at Jul  6 2021 12:43:16 UTC by gcc 9.3.0 64-bit after commit 527923b4e21ea67dc4cbf27ce85a5a2daf53d81f build 2443

The latest prime number: 104729

real 55.8
user 55.67
sys 0
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

real 21.2
user 21.15
sys 0.02
```


### [Node.js/TypeScript](./prime-number/typescript/cmd.ts)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark ts-node --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p ts-node /app/prime-number/typescript/cmd.ts 10000'
```
```
v10.1.0

The latest prime number: 104729

real 22.71
user 23.67
sys 0.08
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

real 361.97
user 361.93
sys 0
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

real 65.37
user 65.31
sys 0.02
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

real 446.52
user 446.48
sys 0
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

real 65.76
user 65.71
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

real 18.17
user 18.16
sys 0
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

real 14.04
user 14.04
sys 0
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

real 16.27
user 16.26
sys 0
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

real 15.68
user 15.67
sys 0
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
30 lines compiled, 0.1 sec

The latest prime number: 104729

real 53.88
user 53.87
sys 0
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

real 49.34
user 49.34
sys 0
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

real 50.01
user 50.04
sys 0.02
```


### [Ruby 2](./prime-number/ruby/cmd.rb)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark /root/.rbenv/versions/2.7.4/bin/ruby --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /root/.rbenv/versions/2.7.4/bin/ruby /app/prime-number/ruby/cmd.rb 10000'
```
```
ruby 2.7.4p191 (2021-07-07 revision a21a3b7d23) [x86_64-linux]

The latest prime number: 104729

real 419.41
user 419.35
sys 0.01
```


### [Ruby 3](./prime-number/ruby/cmd.rb)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark /root/.rbenv/versions/3.0.2/bin/ruby --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /root/.rbenv/versions/3.0.2/bin/ruby /app/prime-number/ruby/cmd.rb 10000'
```
```
ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux]

The latest prime number: 104729

real 369.09
user 369.02
sys 0.02
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

real 17.56
user 17.55
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

real 228.52
user 228.5
sys 0
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

real 14
user 13.99
sys 0
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

real 1021.93
user 1021.74
sys 0.05
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

real 26.72
user 26.61
sys 0.11
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

real 24.92
user 24.58
sys 0
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

real 312.44
user 312.41
sys 0
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

real 151.43
user 151.41
sys 0
```


### [Lua (LuaJIT -j on)](./prime-number/lua/cmd.lua)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark luajit -v && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p luajit -j on /app/prime-number/lua/cmd.lua 10000'
```
```
LuaJIT 2.1.0-beta3 -- Copyright (C) 2005-2017 Mike Pall. http://luajit.org/

The latest prime number:        104729

real 9.59
user 9.59
sys 0
```


### [Lua (LuaJIT -j off)](./prime-number/lua/cmd.lua)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark luajit -v && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p luajit -j off /app/prime-number/lua/cmd.lua 10000'
```
```
LuaJIT 2.1.0-beta3 -- Copyright (C) 2005-2017 Mike Pall. http://luajit.org/

The latest prime number:        104729

real 52.22
user 52.21
sys 0
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

real 22.28
user 22.28
sys 0
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

real 231
user 230.34
sys 0.63
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

real 48.02
user 48.02
sys 0
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

real 19.26
user 19.26
sys 0.01
```


### [Crystal](./prime-number/crystal/cmd.cr)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark crystal --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p crystal /app/prime-number/crystal/cmd.cr 10000'
```
```
Crystal 1.1.1 [6d9a1d583] (2021-07-26)

LLVM: 10.0.1
Default target: x86_64-unknown-linux-gnu

The latest prime number: 104729

real 58.55
user 59.42
sys 0.44
```


### [Crystal (compiled)](./prime-number/crystal/cmd.cr)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark crystal --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark crystal build /app/prime-number/crystal/cmd.cr -o /app/prime-number/crystal/cmd.cr_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/crystal/cmd.cr_bin 10000'
```
```
Crystal 1.1.1 [6d9a1d583] (2021-07-26)

LLVM: 10.0.1
Default target: x86_64-unknown-linux-gnu

The latest prime number: 104729

real 55.61
user 55.61
sys 0
```


### [Crystal (optimized compilation)](./prime-number/crystal/cmd.cr)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark crystal --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark crystal build --release /app/prime-number/crystal/cmd.cr -o /app/prime-number/crystal/cmd.cr_opt_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/crystal/cmd.cr_opt_bin 10000'
```
```
Crystal 1.1.1 [6d9a1d583] (2021-07-26)

LLVM: 10.0.1
Default target: x86_64-unknown-linux-gnu

The latest prime number: 104729

real 15.72
user 15.71
sys 0
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

real 22.71
user 22.7
sys 0
```


### [C# (dotnet)](./prime-number/c%23/cmd.cs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark dotnet --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark dotnet build --runtime linux-x64 /app/prime-number/c#/ > /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p dotnet run -p /app/prime-number/c#/ 10000'
```
```
5.0.302


Welcome to .NET 5.0!
---------------------
SDK Version: 5.0.302

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

real 24.01
user 24.29
sys 0.27
```


### [Scala](./prime-number/scala/cmd.scala)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark scala -version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark scalac -d /app/prime-number/scala /app/prime-number/scala/cmd.scala && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p scala -classpath /app/prime-number/scala cmd 10000'
```
```
Scala code runner version 2.11.12 -- Copyright 2002-2017, LAMP/EPFL

The latest prime number: 104729

real 18.12
user 18.49
sys 0.06
```


### [Elixir](./prime-number/elixir/cmd.exs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark elixir --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p elixir /app/prime-number/elixir/cmd.exs 10000'
```
```
Erlang/OTP 23 [erts-11.1.8] [source] [64-bit] [smp:2:2] [ds:2:2:10] [async-threads:1]

Elixir 1.10.3 (compiled with Erlang/OTP 22)

The latest prime number: 104729

real 97.44
user 97.42
sys 0.11
```


### [Swift (compiled)](./prime-number/swift/Sources/cmd/main.swift)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark /root/swift-5.4.2-RELEASE-ubuntu20.04/usr/bin/swift --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark /root/swift-5.4.2-RELEASE-ubuntu20.04/usr/bin/swift build --package-path /app/prime-number/swift/ && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/swift/.build/debug/cmd 10000'
```
```
Swift version 5.4.2 (swift-5.4.2-RELEASE)
Target: x86_64-unknown-linux-gnu

[1/1] Planning build
[0/0] Build complete!
The latest prime number: 104729

real 933.37
user 933.29
sys 0.00
```


### [Swift (optimized compilation)](./prime-number/swift/Sources/cmd/main.swift)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark /root/swift-5.4.2-RELEASE-ubuntu20.04/usr/bin/swift --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark /root/swift-5.4.2-RELEASE-ubuntu20.04/usr/bin/swift build -c release --package-path /app/prime-number/swift/ && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/swift/.build/release/cmd 10000'
```
```
Swift version 5.4.2 (swift-5.4.2-RELEASE)
Target: x86_64-unknown-linux-gnu

[1/1] Planning build
[0/0] Build complete!
The latest prime number: 104729

real 16.24
user 16.24
sys 0
```


### [Nim (compiled)](./prime-number/nim/cmd.nim)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nim --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark nim compile --verbosity:0 -o:/app/prime-number/nim/cmd.nim_bin /app/prime-number/nim/cmd.nim 2> /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/nim/cmd.nim_bin 10000'
```
```
Nim Compiler Version 1.4.2 [Linux: amd64]
Compiled at 2020-12-02
Copyright (c) 2006-2020 by Andreas Rumpf

active boot switches: -d:release

The latest prime number: 104729

real 66.46
user 66.46
sys 0
```


### [Nim (optimized compilation)](./prime-number/nim/cmd.nim)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nim --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark nim compile -d:release --verbosity:0 -o:/app/prime-number/nim/cmd.nim_opt_bin /app/prime-number/nim/cmd.nim 2> /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/nim/cmd.nim_opt_bin 10000'
```
```
Nim Compiler Version 1.4.2 [Linux: amd64]
Compiled at 2020-12-02
Copyright (c) 2006-2020 by Andreas Rumpf

active boot switches: -d:release

The latest prime number: 104729

real 50.68
user 50.67
sys 0
```


### [D (compiled)](./prime-number/d/cmd.d)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark dmd --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark dmd -debug -of=/app/prime-number/d/cmd.d_bin /app/prime-number/d/cmd.d && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/d/cmd.d_bin 10000'
```
```
DMD64 D Compiler v2.097.1
Copyright (C) 1999-2021 by The D Language Foundation, All Rights Reserved written by Walter Bright

The latest prime number: 104729

real 17.45
user 17.44
sys 0
```


### [D (optimized compilation)](./prime-number/d/cmd.d)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark dmd --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark dmd -O -release -inline -boundscheck=off -of=/app/prime-number/d/cmd.d_opt_bin /app/prime-number/d/cmd.d && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p /app/prime-number/d/cmd.d_opt_bin 10000'
```
```
DMD64 D Compiler v2.097.1
Copyright (C) 1999-2021 by The D Language Foundation, All Rights Reserved written by Walter Bright

The latest prime number: 104729

real 17.2
user 17.2
sys 0
```


### [Bash](./prime-number/bash/cmd.sh)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark bash --version && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time -p bash /app/prime-number/bash/cmd.sh 10000'
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


## Run all prime number benchmarks

```
php run/php/run.php
```
```
----------------------- PHP 5.6 -----------------------
...
----------------------- PHP 7.4 -----------------------
...
----------------------- PHP 8.0 -----------------------
...
```


## Multiply run of prime number benchmark

```
php run/php/run.php 'Node.js/Javascript' 'C/C++' 'Assembler/NASM (optimized compilation)'
```
```
----------------------- Node.js/Javascript -----------------------
...
----------------------- C/C++ -----------------------
...
----------------------- Assembler/NASM (optimized compilation) -----------------------
...
```
