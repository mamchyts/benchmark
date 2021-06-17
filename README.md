# Benchmark

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

![https://quickchart.io/sandbox/#%7B%0A%20%20%22type%22%3A%20%22horizontalBar%22%2C%0A%20%20%22data%22%3A%20%7B%0A%20%20%20%20%22labels%22%3A%20%5B%0A%20%20%20%20%20%20%22Assembler%2FNASM%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Rust%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Assembler%2FNASM%22%2C%0A%20%20%20%20%20%20%22Ada%22%2C%0A%20%20%20%20%20%20%22Java%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%22%2C%0A%20%20%20%20%20%20%22Node.js%2FJavascript%22%2C%0A%20%20%20%20%20%20%22Dart%20(compiled)%22%2C%0A%20%20%20%20%20%20%22Dart%22%2C%0A%20%20%20%20%20%20%22Go%22%2C%0A%20%20%20%20%20%20%22Pascal%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Pascal%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%20(JIT)%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%22%2C%0A%20%20%20%20%20%20%22PHP%207.4%22%2C%0A%20%20%20%20%20%20%22Lua%22%2C%0A%20%20%20%20%20%20%22Haskell%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22PHP%205.6%5D%22%2C%0A%20%20%20%20%20%20%22Ruby%202%22%2C%0A%20%20%20%20%20%20%22Perl%22%2C%0A%20%20%20%20%20%20%22Rust%22%2C%0A%20%20%20%20%20%20%22Ruby%203%22%2C%0A%20%20%20%20%20%20%22Haskell%22%2C%0A%20%20%20%20%20%20%22Python%202%22%2C%0A%20%20%20%20%20%20%22Python%203%22%2C%0A%20%20%20%20%20%20%22R%22%2C%0A%20%20%20%20%5D%2C%0A%20%20%20%20%22datasets%22%3A%20%5B%0A%20%20%20%20%20%20%7B%0A%20%20%20%20%20%20%20%20%22label%22%3A%20%22Execution%20time%20in%20seconds%20(lower%20is%20better)%22%2C%0A%20%20%20%20%20%20%20%20%22backgroundColor%22%3A%20%22rgba(54%2C%20162%2C%20235%2C%200.5)%22%2C%0A%20%20%20%20%20%20%20%20%22borderColor%22%3A%20%22rgb(54%2C%20162%2C%20235)%22%2C%0A%20%20%20%20%20%20%20%20%22borderWidth%22%3A%201%2C%0A%20%20%20%20%20%20%20%20%22data%22%3A%20%5B%0A%20%20%20%20%20%20%20%20%20%204.888%2C%0A%20%20%20%20%20%20%20%20%20%204.983%2C%0A%20%20%20%20%20%20%20%20%20%205.070%2C%0A%20%20%20%20%20%20%20%20%20%205.401%2C%0A%20%20%20%20%20%20%20%20%20%206.185%2C%0A%20%20%20%20%20%20%20%20%20%206.294%2C%0A%20%20%20%20%20%20%20%20%20%206.491%2C%0A%20%20%20%20%20%20%20%20%20%207.598%2C%0A%20%20%20%20%20%20%20%20%20%208.257%2C%0A%20%20%20%20%20%20%20%20%20%208.384%2C%0A%20%20%20%20%20%20%20%20%20%2017.150%2C%0A%20%20%20%20%20%20%20%20%20%2017.593%2C%0A%20%20%20%20%20%20%20%20%20%2018.813%2C%0A%20%20%20%20%20%20%20%20%20%2030.414%2C%0A%20%20%20%20%20%20%20%20%20%2037.559%2C%0A%20%20%20%20%20%20%20%20%20%2040.940%2C%0A%20%20%20%20%20%20%20%20%20%2054.823%2C%0A%20%20%20%20%20%20%20%20%20%2060.961%2C%0A%20%20%20%20%20%20%20%20%20%20116.481%2C%0A%20%20%20%20%20%20%20%20%20%20137.401%2C%0A%20%20%20%20%20%20%20%20%20%20139.541%2C%0A%20%20%20%20%20%20%20%20%20%20142.521%2C%0A%20%20%20%20%20%20%20%20%20%20144.865%2C%0A%20%20%20%20%20%20%20%20%20%20149.925%2C%0A%20%20%20%20%20%20%20%20%20%20167.836%2C%0A%20%20%20%20%20%20%20%20%20%20185.053%2C%0A%20%20%20%20%20%20%20%20%20%20448.441%2C%0A%20%20%20%20%20%20%20%20%5D%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%5D%0A%20%20%7D%2C%0A%20%20%22options%22%3A%20%7B%0A%20%20%20%20%22plugins%22%3A%20%7B%0A%20%20%20%20%20%20%22datalabels%22%3A%20%7B%0A%20%20%20%20%20%20%20%20%22anchor%22%3A%20%22center%22%2C%0A%20%20%20%20%20%20%20%20%22align%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22color%22%3A%20%22%23000%22%0A%20%20%20%20%20%20%7D%2C%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22responsive%22%3A%20true%2C%0A%20%20%20%20%22legend%22%3A%20%7B%0A%20%20%20%20%20%20%22position%22%3A%20%22top%22%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22title%22%3A%20%7B%0A%20%20%20%20%20%20%22display%22%3A%20false%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D](https://quickchart.io/chart?w=900&h=700&c=%7B%0A%20%20%22type%22%3A%20%22horizontalBar%22%2C%0A%20%20%22data%22%3A%20%7B%0A%20%20%20%20%22labels%22%3A%20%5B%0A%20%20%20%20%20%20%22Assembler%2FNASM%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Rust%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Assembler%2FNASM%22%2C%0A%20%20%20%20%20%20%22Ada%22%2C%0A%20%20%20%20%20%20%22Java%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%22%2C%0A%20%20%20%20%20%20%22Node.js%2FJavascript%22%2C%0A%20%20%20%20%20%20%22Dart%20(compiled)%22%2C%0A%20%20%20%20%20%20%22Dart%22%2C%0A%20%20%20%20%20%20%22Go%22%2C%0A%20%20%20%20%20%20%22Pascal%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Pascal%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%20(JIT)%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%22%2C%0A%20%20%20%20%20%20%22PHP%207.4%22%2C%0A%20%20%20%20%20%20%22Lua%22%2C%0A%20%20%20%20%20%20%22Haskell%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22PHP%205.6%5D%22%2C%0A%20%20%20%20%20%20%22Ruby%202%22%2C%0A%20%20%20%20%20%20%22Perl%22%2C%0A%20%20%20%20%20%20%22Rust%22%2C%0A%20%20%20%20%20%20%22Ruby%203%22%2C%0A%20%20%20%20%20%20%22Haskell%22%2C%0A%20%20%20%20%20%20%22Python%202%22%2C%0A%20%20%20%20%20%20%22Python%203%22%2C%0A%20%20%20%20%20%20%22R%22%2C%0A%20%20%20%20%5D%2C%0A%20%20%20%20%22datasets%22%3A%20%5B%0A%20%20%20%20%20%20%7B%0A%20%20%20%20%20%20%20%20%22label%22%3A%20%22Execution%20time%20in%20seconds%20(lower%20is%20better)%22%2C%0A%20%20%20%20%20%20%20%20%22backgroundColor%22%3A%20%22rgba(54%2C%20162%2C%20235%2C%200.5)%22%2C%0A%20%20%20%20%20%20%20%20%22borderColor%22%3A%20%22rgb(54%2C%20162%2C%20235)%22%2C%0A%20%20%20%20%20%20%20%20%22borderWidth%22%3A%201%2C%0A%20%20%20%20%20%20%20%20%22data%22%3A%20%5B%0A%20%20%20%20%20%20%20%20%20%204.888%2C%0A%20%20%20%20%20%20%20%20%20%204.983%2C%0A%20%20%20%20%20%20%20%20%20%205.070%2C%0A%20%20%20%20%20%20%20%20%20%205.401%2C%0A%20%20%20%20%20%20%20%20%20%206.185%2C%0A%20%20%20%20%20%20%20%20%20%206.294%2C%0A%20%20%20%20%20%20%20%20%20%206.491%2C%0A%20%20%20%20%20%20%20%20%20%207.598%2C%0A%20%20%20%20%20%20%20%20%20%208.257%2C%0A%20%20%20%20%20%20%20%20%20%208.384%2C%0A%20%20%20%20%20%20%20%20%20%2017.150%2C%0A%20%20%20%20%20%20%20%20%20%2017.593%2C%0A%20%20%20%20%20%20%20%20%20%2018.813%2C%0A%20%20%20%20%20%20%20%20%20%2030.414%2C%0A%20%20%20%20%20%20%20%20%20%2037.559%2C%0A%20%20%20%20%20%20%20%20%20%2040.940%2C%0A%20%20%20%20%20%20%20%20%20%2054.823%2C%0A%20%20%20%20%20%20%20%20%20%2060.961%2C%0A%20%20%20%20%20%20%20%20%20%20116.481%2C%0A%20%20%20%20%20%20%20%20%20%20137.401%2C%0A%20%20%20%20%20%20%20%20%20%20139.541%2C%0A%20%20%20%20%20%20%20%20%20%20142.521%2C%0A%20%20%20%20%20%20%20%20%20%20144.865%2C%0A%20%20%20%20%20%20%20%20%20%20149.925%2C%0A%20%20%20%20%20%20%20%20%20%20167.836%2C%0A%20%20%20%20%20%20%20%20%20%20185.053%2C%0A%20%20%20%20%20%20%20%20%20%20448.441%2C%0A%20%20%20%20%20%20%20%20%5D%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%5D%0A%20%20%7D%2C%0A%20%20%22options%22%3A%20%7B%0A%20%20%20%20%22plugins%22%3A%20%7B%0A%20%20%20%20%20%20%22datalabels%22%3A%20%7B%0A%20%20%20%20%20%20%20%20%22anchor%22%3A%20%22center%22%2C%0A%20%20%20%20%20%20%20%20%22align%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22color%22%3A%20%22%23000%22%0A%20%20%20%20%20%20%7D%2C%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22responsive%22%3A%20true%2C%0A%20%20%20%20%22legend%22%3A%20%7B%0A%20%20%20%20%20%20%22position%22%3A%20%22top%22%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22title%22%3A%20%7B%0A%20%20%20%20%20%20%22display%22%3A%20false%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D)



## Prime number benchmark


### [PHP 5.6](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php5.6 -v && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time php5.6 /app/prime-number/php/cmd.php 7000'
```
```
PHP 5.6.40-51+ubuntu20.04.1+deb.sury.org+1 (cli)
Copyright (c) 1997-2016 The PHP Group
Zend Engine v2.6.0, Copyright (c) 1998-2016 Zend Technologies
    with Zend OPcache v7.0.6-dev, Copyright (c) 1999-2016, by Zend Technologies


The latest prime number: 70657

real    1m56.481s
user    1m56.429s
sys     0m0.008s
```


### [PHP 7.4](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php7.4 -v && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time php7.4 /app/prime-number/php/cmd.php 7000'
```
```
PHP 7.4.20 (cli) (built: Jun  4 2021 21:24:55) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.20, Copyright (c), by Zend Technologies


The latest prime number: 70657

real    0m40.940s
user    0m40.937s
sys     0m0.000s
```


### [PHP 8.0](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php8.0 -v && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time php8.0 /app/prime-number/php/cmd.php 7000'
```
```
PHP 8.0.7 (cli) (built: Jun  4 2021 21:26:10) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.7, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.7, Copyright (c), by Zend Technologies


The latest prime number: 70657

real    0m37.559s
user    0m37.555s
sys     0m0.000s
```


### [PHP 8.0 (JIT)](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php8.0 -v && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time php8.0 -dopcache.enable_cli=1 -dopcache.jit_buffer_size=10M /app/prime-number/php/cmd.php 7000'
```
```
PHP 8.0.7 (cli) (built: Jun  4 2021 21:26:10) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.7, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.7, Copyright (c), by Zend Technologies


The latest prime number: 70657

real    0m30.414s
user    0m30.408s
sys     0m0.004s
```


### [Node.js/Javascript](./prime-number/javascript/cmd.js)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nodejs --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time nodejs /app/prime-number/javascript/cmd.js 7000'
```
```
v10.19.0


The latest prime number: 70657

real    0m7.598s
user    0m7.558s
sys     0m0.024s
```


### [Python 2](./prime-number/python/cmd.py2)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark python2 --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time python2 /app/prime-number/python/cmd.py2 7000'
```
```
Python 2.7.18


The latest prime number:  70657

real    2m47.836s
user    2m47.412s
sys     0m0.072s
```


### [Python 3](./prime-number/python/cmd.py3)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark python3 --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time python3 /app/prime-number/python/cmd.py3 7000'
```
```
Python 3.8.5


The latest prime number:  70657

real    3m5.053s
user    3m4.952s
sys     0m0.000s
```


### [C/C++](./prime-number/c++/cmd.cpp)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark g++ --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark g++ -O0 /app/prime-number/c++/cmd.cpp -o /app/prime-number/c++/cmd.cpp_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/c++/cmd.cpp_bin 7000'
```
```
g++ (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.



The latest prime number: 70657

real    0m6.491s
user    0m6.464s
sys     0m0.000s
```


### [C/C++ (optimized compilation)](./prime-number/c++/cmd.cpp)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark g++ --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark g++ -Ofast /app/prime-number/c++/cmd.cpp -o /app/prime-number/c++/cmd.cpp_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/c++/cmd.cpp_bin 7000'
```
```
g++ (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.



The latest prime number: 70657

real    0m4.983s
user    0m4.979s
sys     0m0.004s
```


### [Assembler/NASM](./prime-number/assembler/cmd.asm)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nasm --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark nasm -f elf -O0 /app/prime-number/assembler/cmd.asm && \
docker run --rm --volume $(pwd):/app benchmark ld -m elf_i386 /app/prime-number/assembler/cmd.o -o /app/prime-number/assembler/cmd.asm_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/assembler/cmd.asm_bin 7000'
```
```
NASM version 2.14.02


The latest prime number: 000070657

real    0m5.401s
user    0m5.401s
sys     0m0.000s
```


### [Assembler/NASM (optimized compilation)](./prime-number/assembler/cmd.asm)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nasm --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark nasm -f elf -Ox /app/prime-number/assembler/cmd.asm && \
docker run --rm --volume $(pwd):/app benchmark ld -O3 -m elf_i386 /app/prime-number/assembler/cmd.o -o /app/prime-number/assembler/cmd.asm_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/assembler/cmd.asm_bin 7000'
```
```
NASM version 2.14.02


The latest prime number: 000070657

real    0m4.888s
user    0m4.988s
sys     0m0.000s
```


### [Pascal](./prime-number/pascal/cmd.pas)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark fpc -iW && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark fpc -O- /app/prime-number/pascal/cmd.pas -o/app/prime-number/pascal/cmd.pas_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/pascal/cmd.pas_bin 7000'
```
```
3.0.4+dfsg-23


Free Pascal Compiler version 3.0.4+dfsg-23 [2019/11/25] for x86_64
Copyright (c) 1993-2017 by Florian Klaempfl and others
Target OS: Linux for x86-64
Compiling /app/prime-number/pascal/cmd.pas
Linking /app/prime-number/pascal/cmd.pas_bin
/usr/bin/ld.bfd: warning: /app/prime-number/pascal/link.res contains output sections; did you forget -T?
30 lines compiled, 0.1 sec
The latest prime number: 70657

real    0m18.813s
user    0m18.812s
sys     0m0.000s
```


### [Pascal (optimized compilation)](./prime-number/pascal/cmd.pas)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark fpc -iW && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark fpc -O3 /app/prime-number/pascal/cmd.pas -o/app/prime-number/pascal/cmd.pas_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/pascal/cmd.pas_bin 7000'
```
```
3.0.4+dfsg-23


Free Pascal Compiler version 3.0.4+dfsg-23 [2019/11/25] for x86_64
Copyright (c) 1993-2017 by Florian Klaempfl and others
Target OS: Linux for x86-64
Compiling /app/prime-number/pascal/cmd.pas
Linking /app/prime-number/pascal/cmd.pas_bin
/usr/bin/ld.bfd: warning: /app/prime-number/pascal/link.res contains output sections; did you forget -T?
30 lines compiled, 0.1 sec
The latest prime number: 70657

real    0m17.593s
user    0m17.592s
sys     0m0.000s
```


### [Go](./prime-number/go/cmd.go)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark go version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark go build -o /app/prime-number/go/cmd.go_bin /app/prime-number/go/cmd.go && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/go/cmd.go_bin 7000'
```
```
go version go1.13.8 linux/amd64


The latest prime number: 70657

real    0m17.150s
user    0m17.150s
sys     0m0.012s
```


### [Ruby 2](./prime-number/ruby/cmd.rb)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark /root/.rbenv/versions/2.7.3/bin/ruby --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /root/.rbenv/versions/2.7.3/bin/ruby /app/prime-number/ruby/cmd.rb 7000'
```
```
ruby 2.7.3p183 (2021-04-05 revision 6847ee089d) [x86_64-linux]


The latest prime number: 70657

real    2m17.401s
user    2m17.382s
sys     0m0.012s
```


### [Ruby 3](./prime-number/ruby/cmd.rb)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark /root/.rbenv/versions/3.0.1/bin/ruby --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /root/.rbenv/versions/3.0.1/bin/ruby /app/prime-number/ruby/cmd.rb 7000'
```
```
ruby 3.0.1p64 (2021-04-05 revision 0fb782ee38) [x86_64-linux]


The latest prime number: 70657

real    2m24.865s
user    2m24.767s
sys     0m0.008s
```


### [Java](./prime-number/java/cmd.java)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark java --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark javac /app/prime-number/java/cmd.java && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time java -classpath /app/prime-number/java/ cmd 7000'
```
```
openjdk 16.0.1 2021-04-20
OpenJDK Runtime Environment (build 16.0.1+9-Ubuntu-120.04)
OpenJDK 64-Bit Server VM (build 16.0.1+9-Ubuntu-120.04, mixed mode, sharing)


The latest prime number: 70657

real    0m6.294s
user    0m6.285s
sys     0m0.012s
```


### [Rust](./prime-number/rust/cmd.rs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark rustc --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark rustc /app/prime-number/rust/cmd.rs -o /app/prime-number/rust/cmd.rs_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/rust/cmd.rs_bin 7000'
```
```
rustc 1.47.0


The latest prime number: 70657

real    1m22.521s
user    1m22.515s
sys     0m0.000s
```


### [Rust (optimized compilation)](./prime-number/rust/cmd.rs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark rustc --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark rustc -C opt-level=3 /app/prime-number/rust/cmd.rs -o /app/prime-number/rust/cmd.rs_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/rust/cmd.rs_bin 7000'
```
```
rustc 1.47.0


The latest prime number: 70657

real    0m5.070s
user    0m5.037s
sys     0m0.000s
```


### [R](./prime-number/r/cmd.r)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark Rscript --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time Rscript --vanilla /app/prime-number/r/cmd.r 7000'
```
```
R scripting front-end version 3.6.3 (2020-02-29)


[1] "The latest prime number:  70657"

real    7m28.441s
user    7m28.305s
sys     0m0.072s
```


### [Dart](./prime-number/dart/cmd.dart)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark dart --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time dart run /app/prime-number/dart/cmd.dart 7000'
```
```
Dart SDK version: 2.13.3 (stable) (Unknown timestamp) on "linux_x64"


The latest prime number: 70657

real    0m8.384s
user    0m8.279s
sys     0m0.088s
```


### [Dart (compiled)](./prime-number/dart/cmd.dart)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark dart --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark dart compile exe /app/prime-number/dart/cmd.dart -o /app/prime-number/dart/cmd.dart_bin > /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/dart/cmd.dart_bin 7000'
```
```
Dart SDK version: 2.13.3 (stable) (Unknown timestamp) on "linux_x64"


The latest prime number: 70657

real    0m8.257s
user    0m8.253s
sys     0m0.004s
```


### [Perl](./prime-number/perl/cmd.pl)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark perl --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time perl /app/prime-number/perl/cmd.pl 7000'
```
```
This is perl 5, version 30, subversion 0 (v5.30.0) built for x86_64-linux-gnu-thread-multi
(with 50 registered patches, see perl -V for more detail)

Copyright 1987-2019, Larry Wall

Perl may be copied only under the terms of either the Artistic License or the
GNU General Public License, which may be found in the Perl 5 source kit.

Complete documentation for Perl, including FAQ lists, should be found on
this system using "man perl" or "perldoc perl".  If you have access to the
Internet, point your browser at http://www.perl.org/, the Perl Home Page.



The latest prime number: 70657

real    2m19.541s
user    2m19.491s
sys     0m0.020s
```


### [Lua](./prime-number/lua/cmd.lua)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark lua -v && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time lua /app/prime-number/lua/cmd.lua 7000'
```
```
Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio


The latest prime number:        70657

real    0m54.823s
user    0m54.819s
sys     0m0.000s
```


### [Ada](./prime-number/ada/cmd.adb)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark gnatmake --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark gnatmake -q /app/prime-number/ada/cmd.adb -o /app/prime-number/ada/cmd.adb_bin && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/ada/cmd.adb_bin 7000'
```
```
GNATMAKE 9.3.0
Copyright (C) 1995-2019, Free Software Foundation, Inc.
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.



The latest prime number:  70657

real    0m6.185s
user    0m6.184s
sys     0m0.000s
```


### [Haskell](./prime-number/haskell/cmd.hs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark ghc --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark ghc /app/prime-number/haskell/cmd.hs -o /app/prime-number/haskell/cmd.hs_bin > /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/haskell/cmd.hs_bin 7000'
```
```
The Glorious Glasgow Haskell Compilation System, version 8.6.5


The latest prime number: 70657

real    2m29.925s
user    2m29.095s
sys     0m0.472s
```


### [Haskell (optimized compilation)](./prime-number/haskell/cmd.hs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark ghc --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark ghc -O /app/prime-number/haskell/cmd.hs -o /app/prime-number/haskell/cmd.hs_bin > /dev/null && \
docker run --rm --volume $(pwd):/app benchmark bash -c 'time /app/prime-number/haskell/cmd.hs_bin 7000'
```
```
The Glorious Glasgow Haskell Compilation System, version 8.6.5


The latest prime number: 70657

real    1m0.961s
user    1m0.849s
sys     0m0.108s
```
