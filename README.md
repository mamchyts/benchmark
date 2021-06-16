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

![https://quickchart.io/sandbox/#%7B%0A%20%20%22type%22%3A%20%22horizontalBar%22%2C%0A%20%20%22data%22%3A%20%7B%0A%20%20%20%20%22labels%22%3A%20%5B%0A%20%20%20%20%20%20%22Assembler%2FNASM%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Rust%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Assembler%2FNASM%22%2C%0A%20%20%20%20%20%20%22Ada%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%22%2C%0A%20%20%20%20%20%20%22Java%22%2C%0A%20%20%20%20%20%20%22Dart%20(compiled)%22%2C%0A%20%20%20%20%20%20%22Node.js%2FJavascript%22%2C%0A%20%20%20%20%20%20%22Dart%22%2C%0A%20%20%20%20%20%20%22Go%22%2C%0A%20%20%20%20%20%20%22Pascal%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Pascal%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%20(JIT)%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%22%2C%0A%20%20%20%20%20%20%22PHP%207.4%22%2C%0A%20%20%20%20%20%20%22Lua%22%2C%0A%20%20%20%20%20%20%22Rust%22%2C%0A%20%20%20%20%20%20%22PHP%205.6%22%2C%0A%20%20%20%20%20%20%22Ruby%22%2C%0A%20%20%20%20%20%20%22Perl%22%2C%0A%20%20%20%20%20%20%22Python%202%22%2C%0A%20%20%20%20%20%20%22Python%203%22%2C%0A%20%20%20%20%20%20%22R%22%0A%20%20%20%20%5D%2C%0A%20%20%20%20%22datasets%22%3A%20%5B%0A%20%20%20%20%20%20%7B%0A%20%20%20%20%20%20%20%20%22label%22%3A%20%22Execution%20time%20in%20seconds%20(lower%20is%20better)%22%2C%0A%20%20%20%20%20%20%20%20%22backgroundColor%22%3A%20%22rgba(54%2C%20162%2C%20235%2C%200.5)%22%2C%0A%20%20%20%20%20%20%20%20%22borderColor%22%3A%20%22rgb(54%2C%20162%2C%20235)%22%2C%0A%20%20%20%20%20%20%20%20%22borderWidth%22%3A%201%2C%0A%20%20%20%20%20%20%20%20%22data%22%3A%20%5B%0A%20%20%20%20%20%20%20%20%20%202.896%2C%0A%20%20%20%20%20%20%20%20%20%202.978%2C%0A%20%20%20%20%20%20%20%20%20%203.111%2C%0A%20%20%20%20%20%20%20%20%20%203.173%2C%0A%20%20%20%20%20%20%20%20%20%203.623%2C%0A%20%20%20%20%20%20%20%20%20%203.676%2C%0A%20%20%20%20%20%20%20%20%20%203.742%2C%0A%20%20%20%20%20%20%20%20%20%204.594%2C%0A%20%20%20%20%20%20%20%20%20%204.845%2C%0A%20%20%20%20%20%20%20%20%20%204.865%2C%0A%20%20%20%20%20%20%20%20%20%208.884%2C%0A%20%20%20%20%20%20%20%20%20%208.958%2C%0A%20%20%20%20%20%20%20%20%20%209.505%2C%0A%20%20%20%20%20%20%20%20%20%2015.349%2C%0A%20%20%20%20%20%20%20%20%20%2019.321%2C%0A%20%20%20%20%20%20%20%20%20%2019.566%2C%0A%20%20%20%20%20%20%20%20%20%2026.448%2C%0A%20%20%20%20%20%20%20%20%20%2039.774%2C%0A%20%20%20%20%20%20%20%20%20%2051.251%2C%0A%20%20%20%20%20%20%20%20%20%2064.091%2C%0A%20%20%20%20%20%20%20%20%20%2070.362%2C%0A%20%20%20%20%20%20%20%20%20%2082.335%2C%0A%20%20%20%20%20%20%20%20%20%2092.738%2C%0A%20%20%20%20%20%20%20%20%20%20256.579%0A%20%20%20%20%20%20%20%20%5D%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%5D%0A%20%20%7D%2C%0A%20%20%22options%22%3A%20%7B%0A%20%20%20%20%22plugins%22%3A%20%7B%0A%20%20%20%20%20%20%22datalabels%22%3A%20%7B%0A%20%20%20%20%20%20%20%20%22anchor%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22align%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22color%22%3A%20%22%23000%22%0A%20%20%20%20%20%20%7D%2C%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22responsive%22%3A%20true%2C%0A%20%20%20%20%22legend%22%3A%20%7B%0A%20%20%20%20%20%20%22position%22%3A%20%22top%22%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22title%22%3A%20%7B%0A%20%20%20%20%20%20%22display%22%3A%20false%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D](https://quickchart.io/chart?w=900&h=700&c=%7B%0A%20%20%22type%22%3A%20%22horizontalBar%22%2C%0A%20%20%22data%22%3A%20%7B%0A%20%20%20%20%22labels%22%3A%20%5B%0A%20%20%20%20%20%20%22Assembler%2FNASM%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Rust%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Assembler%2FNASM%22%2C%0A%20%20%20%20%20%20%22Ada%22%2C%0A%20%20%20%20%20%20%22C%2FC%2B%2B%22%2C%0A%20%20%20%20%20%20%22Java%22%2C%0A%20%20%20%20%20%20%22Dart%20(compiled)%22%2C%0A%20%20%20%20%20%20%22Node.js%2FJavascript%22%2C%0A%20%20%20%20%20%20%22Dart%22%2C%0A%20%20%20%20%20%20%22Go%22%2C%0A%20%20%20%20%20%20%22Pascal%20(optimized%20compilation)%22%2C%0A%20%20%20%20%20%20%22Pascal%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%20(JIT)%22%2C%0A%20%20%20%20%20%20%22PHP%208.0%22%2C%0A%20%20%20%20%20%20%22PHP%207.4%22%2C%0A%20%20%20%20%20%20%22Lua%22%2C%0A%20%20%20%20%20%20%22Rust%22%2C%0A%20%20%20%20%20%20%22PHP%205.6%22%2C%0A%20%20%20%20%20%20%22Ruby%22%2C%0A%20%20%20%20%20%20%22Perl%22%2C%0A%20%20%20%20%20%20%22Python%202%22%2C%0A%20%20%20%20%20%20%22Python%203%22%2C%0A%20%20%20%20%20%20%22R%22%0A%20%20%20%20%5D%2C%0A%20%20%20%20%22datasets%22%3A%20%5B%0A%20%20%20%20%20%20%7B%0A%20%20%20%20%20%20%20%20%22label%22%3A%20%22Execution%20time%20in%20seconds%20(lower%20is%20better)%22%2C%0A%20%20%20%20%20%20%20%20%22backgroundColor%22%3A%20%22rgba(54%2C%20162%2C%20235%2C%200.5)%22%2C%0A%20%20%20%20%20%20%20%20%22borderColor%22%3A%20%22rgb(54%2C%20162%2C%20235)%22%2C%0A%20%20%20%20%20%20%20%20%22borderWidth%22%3A%201%2C%0A%20%20%20%20%20%20%20%20%22data%22%3A%20%5B%0A%20%20%20%20%20%20%20%20%20%202.896%2C%0A%20%20%20%20%20%20%20%20%20%202.978%2C%0A%20%20%20%20%20%20%20%20%20%203.111%2C%0A%20%20%20%20%20%20%20%20%20%203.173%2C%0A%20%20%20%20%20%20%20%20%20%203.623%2C%0A%20%20%20%20%20%20%20%20%20%203.676%2C%0A%20%20%20%20%20%20%20%20%20%203.742%2C%0A%20%20%20%20%20%20%20%20%20%204.594%2C%0A%20%20%20%20%20%20%20%20%20%204.845%2C%0A%20%20%20%20%20%20%20%20%20%204.865%2C%0A%20%20%20%20%20%20%20%20%20%208.884%2C%0A%20%20%20%20%20%20%20%20%20%208.958%2C%0A%20%20%20%20%20%20%20%20%20%209.505%2C%0A%20%20%20%20%20%20%20%20%20%2015.349%2C%0A%20%20%20%20%20%20%20%20%20%2019.321%2C%0A%20%20%20%20%20%20%20%20%20%2019.566%2C%0A%20%20%20%20%20%20%20%20%20%2026.448%2C%0A%20%20%20%20%20%20%20%20%20%2039.774%2C%0A%20%20%20%20%20%20%20%20%20%2051.251%2C%0A%20%20%20%20%20%20%20%20%20%2064.091%2C%0A%20%20%20%20%20%20%20%20%20%2070.362%2C%0A%20%20%20%20%20%20%20%20%20%2082.335%2C%0A%20%20%20%20%20%20%20%20%20%2092.738%2C%0A%20%20%20%20%20%20%20%20%20%20256.579%0A%20%20%20%20%20%20%20%20%5D%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%5D%0A%20%20%7D%2C%0A%20%20%22options%22%3A%20%7B%0A%20%20%20%20%22plugins%22%3A%20%7B%0A%20%20%20%20%20%20%22datalabels%22%3A%20%7B%0A%20%20%20%20%20%20%20%20%22anchor%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22align%22%3A%20%22end%22%2C%0A%20%20%20%20%20%20%20%20%22color%22%3A%20%22%23000%22%0A%20%20%20%20%20%20%7D%2C%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22responsive%22%3A%20true%2C%0A%20%20%20%20%22legend%22%3A%20%7B%0A%20%20%20%20%20%20%22position%22%3A%20%22top%22%0A%20%20%20%20%7D%2C%0A%20%20%20%20%22title%22%3A%20%7B%0A%20%20%20%20%20%20%22display%22%3A%20false%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D)



## Prime number benchmark


### [PHP 5.6](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php5.6 -v && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark php5.6 /app/prime-number/php/cmd.php 5000
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


### [PHP 7.4](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php7.4 -v && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark php7.4 /app/prime-number/php/cmd.php 5000
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


### [PHP 8.0](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php8.0 -v && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark php8.0 /app/prime-number/php/cmd.php 5000
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


### [PHP 8.0 (JIT)](./prime-number/php/cmd.php)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark php8.0 -v && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark php8.0 -dopcache.enable_cli=1 -dopcache.jit_buffer_size=10M /app/prime-number/php/cmd.php 5000
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


### [Node.js/Javascript](./prime-number/javascript/cmd.js)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nodejs --version && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark nodejs /app/prime-number/javascript/cmd.js 5000
```
```
v10.19.0


The latest prime number: 48611

real    0m4.845s
user    0m0.064s
sys     0m0.020s
```


### [Python 2](./prime-number/python/cmd.py2)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark python2 --version && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark python2 /app/prime-number/python/cmd.py2 5000
```
```
Python 2.7.18


The latest prime number:  48611

real    1m22.335s
user    0m0.047s
sys     0m0.017s
```


### [Python 3](./prime-number/python/cmd.py3)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark python3 --version && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark python3 /app/prime-number/python/cmd.py3 5000
```
```
Python 3.8.5


The latest prime number:  48611

real    1m32.738s
user    0m0.040s
sys     0m0.034s
```


### [C/C++](./prime-number/c++/cmd.cpp)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark g++ --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark g++ -O0 /app/prime-number/c++/cmd.cpp -o /app/prime-number/c++/cmd.cpp_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/c++/cmd.cpp_bin 5000
```
```
g++ (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.



The latest prime number: 48611

real    0m3.676s
user    0m0.033s
sys     0m0.016s
```


### [C/C++ (optimized compilation)](./prime-number/c++/cmd.cpp)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark g++ --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark g++ -Ofast /app/prime-number/c++/cmd.cpp -o /app/prime-number/c++/cmd.cpp_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/c++/cmd.cpp_bin 5000
```
```
g++ (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.



The latest prime number: 48611

real    0m2.978s
user    0m0.024s
sys     0m0.025s
```


### [Assembler/NASM](./prime-number/assembler/cmd.asm)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nasm --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark nasm -f elf -O0 /app/prime-number/assembler/cmd.asm && \
docker run --rm --volume $(pwd):/app benchmark ld -m elf_i386 /app/prime-number/assembler/cmd.o -o /app/prime-number/assembler/cmd.asm_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/assembler/cmd.asm_bin 5000
```
```
NASM version 2.14.02


The latest prime number: 000048611

real    0m3.173s
user    0m0.028s
sys     0m0.016s
```


### [Assembler/NASM (optimized compilation)](./prime-number/assembler/cmd.asm)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nasm --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark nasm -f elf -Ox /app/prime-number/assembler/cmd.asm && \
docker run --rm --volume $(pwd):/app benchmark ld -O3 -m elf_i386 /app/prime-number/assembler/cmd.o -o /app/prime-number/assembler/cmd.asm_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/assembler/cmd.asm_bin 5000
```
```
NASM version 2.14.02


The latest prime number: 000048611

real    0m2.896s
user    0m0.028s
sys     0m0.018s
```


### [Pascal](./prime-number/pascal/cmd.pas)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark fpc -iW && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark fpc -O- /app/prime-number/pascal/cmd.pas -o/app/prime-number/pascal/cmd.pas_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/pascal/cmd.pas_bin 5000
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
The latest prime number: 48611

real    0m9.505s
user    0m0.034s
sys     0m0.011s
```


### [Pascal (optimized compilation)](./prime-number/pascal/cmd.pas)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark fpc -iW && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark fpc -O4 /app/prime-number/pascal/cmd.pas -o/app/prime-number/pascal/cmd.pas_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/pascal/cmd.pas_bin 5000
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
The latest prime number: 48611

real    0m8.958s
user    0m0.028s
sys     0m0.016s
```


### [Go](./prime-number/go/cmd.go)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark go version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark go build -o /app/prime-number/go/cmd.go_bin /app/prime-number/go/cmd.go && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/go/cmd.go_bin 5000
```
```
go version go1.13.8 linux/amd64


The latest prime number: 48611

real    0m8.884s
user    0m0.033s
sys     0m0.016s
```


### [Ruby](./prime-number/ruby/cmd.rb)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark ruby --version && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark ruby /app/prime-number/ruby/cmd.rb 5000
```
```
ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-linux-gnu]


The latest prime number: 48611

real    1m4.091s
user    0m0.037s
sys     0m0.041s
```


### [Java](./prime-number/java/cmd.java)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark java --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark javac /app/prime-number/java/cmd.java && \
time docker run --rm --volume $(pwd):/app benchmark java -classpath /app/prime-number/java/ cmd 5000
```
```
openjdk 16.0.1 2021-04-20
OpenJDK Runtime Environment (build 16.0.1+9-Ubuntu-120.04)
OpenJDK 64-Bit Server VM (build 16.0.1+9-Ubuntu-120.04, mixed mode, sharing)


The latest prime number: 48611

real    0m3.742s
user    0m0.034s
sys     0m0.047s
```


### [Rust](./prime-number/rust/cmd.rs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark rustc --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark rustc /app/prime-number/rust/cmd.rs -o /app/prime-number/rust/cmd.rs_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/rust/cmd.rs_bin 5000
```
```
rustc 1.47.0


The latest prime number: 48611

real    0m39.774s
user    0m0.044s
sys     0m0.016s
```


### [Rust (optimized compilation)](./prime-number/rust/cmd.rs)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark rustc --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark rustc -O /app/prime-number/rust/cmd.rs -o /app/prime-number/rust/cmd.rs_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/rust/cmd.rs_bin 5000
```
```
rustc 1.47.0


The latest prime number: 48611

real    0m3.111s
user    0m0.047s
sys     0m0.018s
```


### [R](./prime-number/r/cmd.r)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark Rscript --version && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark Rscript --vanilla /app/prime-number/r/cmd.r 5000
```
```
R scripting front-end version 3.6.3 (2020-02-29)


[1] "The latest prime number:  48611"

real    4m16.579s
user    0m0.068s
sys     0m0.038s
```


### [Dart](./prime-number/dart/cmd.dart)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark dart --version && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark dart run /app/prime-number/dart/cmd.dart 5000
```
```
Dart SDK version: 2.13.1 (stable) (Unknown timestamp) on "linux_x64"


The latest prime number: 48611

real    0m4.865s
user    0m0.053s
sys     0m0.027s
```


### [Dart (compiled)](./prime-number/dart/cmd.dart)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark dart --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark dart compile exe /app/prime-number/dart/cmd.dart -o /app/prime-number/dart/cmd.dart_bin > /dev/null && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/dart/cmd.dart_bin 5000
```
```
Dart SDK version: 2.13.1 (stable) (Unknown timestamp) on "linux_x64"


The latest prime number: 48611

real    0m4.594s
user    0m0.044s
sys     0m0.038s
```


### [Perl](./prime-number/perl/cmd.pl)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark perl --version && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark perl /app/prime-number/perl/cmd.pl 5000
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



The latest prime number: 48611

real    1m10.362s
user    0m0.050s
sys     0m0.056s
```


### [Lua](./prime-number/lua/cmd.lua)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark lua -v && echo '' && echo '' && \
time docker run --rm --volume $(pwd):/app benchmark lua /app/prime-number/lua/cmd.lua 5000
```
```
Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio


The latest prime number:        48611

real    0m26.448s
user    0m0.053s
sys     0m0.036s
```


### [Ada](./prime-number/ada/cmd.adb)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark gnatmake --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark gnatmake -q /app/prime-number/ada/cmd.adb -o /app/prime-number/ada/cmd.adb_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/ada/cmd.adb_bin 5000
```
```
GNATMAKE 9.3.0
Copyright (C) 1995-2019, Free Software Foundation, Inc.
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.



The latest prime number:  48611

real    0m3.623s
user    0m0.031s
sys     0m0.046s
```
