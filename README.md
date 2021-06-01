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


### [PHP 5.6](./prime-number/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php5.6 -v && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark php5.6 /app/prime-number/cmd.php 5000
```

```
PHP 5.6.40-50+ubuntu20.04.1+deb.sury.org+1 (cli)
Copyright (c) 1997-2016 The PHP Group
Zend Engine v2.6.0, Copyright (c) 1998-2016 Zend Technologies
    with Zend OPcache v7.0.6-dev, Copyright (c) 1999-2016, by Zend Technologies


The latest prime number: 48611

real    0m51.251s
user    0m0.035s
sys     0m0.051s
```


### [PHP 7.4](./prime-number/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php7.4 -v && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark php7.4 /app/prime-number/cmd.php 5000
```
```
PHP 7.4.18 (cli) (built: May  3 2021 11:27:06) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.18, Copyright (c), by Zend Technologies


The latest prime number: 48611

real    0m19.566s
user    0m0.036s
sys     0m0.023s
```


### [PHP 8.0](./prime-number/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php8.0 -v && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark php8.0 /app/prime-number/cmd.php 5000
```
```
PHP 8.0.5 (cli) (built: May  3 2021 11:30:57) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.5, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.5, Copyright (c), by Zend Technologies


The latest prime number: 48611

real    0m19.321s
user    0m0.037s
sys     0m0.032s
```


### [PHP 8.0 with JIT](./prime-number/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php8.0 -v && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark php8.0 -dopcache.enable_cli=1 -dopcache.jit_buffer_size=10M /app/prime-number/cmd.php 5000
```
```
PHP 8.0.5 (cli) (built: May  3 2021 11:30:57) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.5, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.5, Copyright (c), by Zend Technologies


The latest prime number: 48611

real    0m15.349s
user    0m0.038s
sys     0m0.041s
```


### [Node.js/Javascript](./prime-number/cmd.js)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nodejs --version && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark nodejs /app/prime-number/cmd.js 5000
```
```
v10.19.0


The latest prime number: 48611

real    0m4.845s
user    0m0.064s
sys     0m0.020s
```


### [Python 2](./prime-number/cmd.py2)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark python2 --version && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark python2 /app/prime-number/cmd.py2 5000
```
```
Python 2.7.18


The latest prime number:  48611

real    1m22.335s
user    0m0.047s
sys     0m0.017s
```


### [Python 3](./prime-number/cmd.py3)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark python3 --version && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark python3 /app/prime-number/cmd.py3 5000
```
```
Python 3.8.5


The latest prime number:  48611

real    1m32.738s
user    0m0.040s
sys     0m0.034s
```


### [C/C++](./prime-number/cmd.cpp)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark g++ --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark g++ /app/prime-number/cmd.cpp -o /app/prime-number/cmd.cpp_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/cmd.cpp_bin 5000
```
```
g++ (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.



The latest prime number: 48611

real    0m3.767s
user    0m0.062s
sys     0m0.025s
```


### [Assembler/NASM](./prime-number/cmd.asm)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nasm --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark nasm -f elf /app/prime-number/cmd.asm && \
docker run --rm --volume $(pwd):/app benchmark ld -m elf_i386 /app/prime-number/cmd.o -o /app/prime-number/cmd.asm_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/cmd.asm_bin 5000
```
```
NASM version 2.14.02


The latest prime number: 000048611

real    0m3.101s
user    0m0.050s
sys     0m0.043s
```


### [Pascal](./prime-number/cmd.cpp)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark fpc -iW && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark fpc /app/prime-number/cmd.pas -o/app/prime-number/cmd.pas_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/cmd.pas_bin 5000
```
```
3.0.4+dfsg-23


Free Pascal Compiler version 3.0.4+dfsg-23 [2019/11/25] for x86_64
Copyright (c) 1993-2017 by Florian Klaempfl and others
Target OS: Linux for x86-64
Compiling /app/prime-number/cmd.pas
Linking /app/prime-number/cmd.pas_bin
/usr/bin/ld.bfd: warning: /app/prime-number/link.res contains output sections; did you forget -T?
30 lines compiled, 0.1 sec
The latest prime number: 48611

real    0m9.802s
user    0m0.060s
sys     0m0.039s
```


### [Go](./prime-number/cmd.go)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark go version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark go build -o /app/prime-number/cmd.go_bin /app/prime-number/cmd.go && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/cmd.go_bin 5000
```
```
go version go1.13.8 linux/amd64


The latest prime number: 48611

real    0m8.884s
user    0m0.033s
sys     0m0.016s
```
