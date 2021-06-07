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

![https://quickchart.io/sandbox/#%7B%0A%20%20type%3A%20'bar'%2C%0A%20%20data%3A%20%7B%0A%20%20%20%20labels%3A%20%5B'PHP%205.6'%2C%20'PHP%207.4'%2C%20'PHP%208.0'%2C%20'PHP%208.0%20(JIT)'%2C%20'Node.js'%2C%20'Python%202'%2C%20'Python%203'%2C%20'C%2FC%2B%2B'%2C%20'Asm%2FNASM'%2C%20'Pascal'%2C%20'GO'%2C%20'Ruby'%2C%20'Java'%2C%20'Rust'%2C%20'R'%5D%2C%0A%20%20%20%20datasets%3A%20%5B%0A%20%20%20%20%20%20%7B%0A%20%20%20%20%20%20%20%20label%3A%20'Execution%20time%20in%20seconds%20(lower%20is%20better)'%2C%0A%20%20%20%20%20%20%20%20data%3A%20%5B51.251%2C%2019.566%2C%2019.321%2C%2015.349%2C%204.845%2C%2082.335%2C%2092.738%2C%203.699%2C%203.101%2C%209.802%2C%208.884%2C%2064.091%2C%203.742%2C%2039.774%2C%20256.579%5D%2C%0A%20%20%20%20%20%20%20%20backgroundColor%3A%20'rgba(54%2C%20162%2C%20235%2C%200.5)'%2C%0A%20%20%20%20%20%20%20%20borderColor%3A%20'rgb(54%2C%20162%2C%20235)'%2C%0A%20%20%20%20%20%20%20%20borderWidth%3A%201%2C%0A%20%20%20%20%20%20%7D%2C%0A%20%20%20%20%5D%2C%0A%20%20%7D%2C%0A%20%20options%3A%20%7B%0A%20%20%20%20plugins%3A%20%7B%0A%20%20%20%20%20%20datalabels%3A%20%7B%0A%20%20%20%20%20%20%20%20anchor%3A%20'center'%2C%0A%20%20%20%20%20%20%20%20align%3A%20'center'%2C%0A%20%20%20%20%20%20%20%20color%3A%20'%23000'%0A%20%20%20%20%20%20%7D%2C%0A%20%20%20%20%7D%2C%0A%20%20%7D%2C%0A%7D%0A](https://quickchart.io/chart?w=950&h=600&c=%7B%0A%20%20type%3A%20%27bar%27%2C%0A%20%20data%3A%20%7B%0A%20%20%20%20labels%3A%20%5B%27PHP%205.6%27%2C%20%27PHP%207.4%27%2C%20%27PHP%208.0%27%2C%20%27PHP%208.0%20(JIT)%27%2C%20%27Node.js%27%2C%20%27Python%202%27%2C%20%27Python%203%27%2C%20%27C%2FC%2B%2B%27%2C%20%27Asm%2FNASM%27%2C%20%27Pascal%27%2C%20%27GO%27%2C%20%27Ruby%27%2C%20%27Java%27%2C%20%27Rust%27%2C%20%27R%27%5D%2C%0A%20%20%20%20datasets%3A%20%5B%0A%20%20%20%20%20%20%7B%0A%20%20%20%20%20%20%20%20label%3A%20%27Execution%20time%20in%20seconds%20(lower%20is%20better)%27%2C%0A%20%20%20%20%20%20%20%20data%3A%20%5B51.251%2C%2019.566%2C%2019.321%2C%2015.349%2C%204.845%2C%2082.335%2C%2092.738%2C%203.699%2C%203.101%2C%209.802%2C%208.884%2C%2064.091%2C%203.742%2C%2039.774%2C%20256.579%5D%2C%0A%20%20%20%20%20%20%20%20backgroundColor%3A%20%27rgba(54%2C%20162%2C%20235%2C%200.5)%27%2C%0A%20%20%20%20%20%20%20%20borderColor%3A%20%27rgb(54%2C%20162%2C%20235)%27%2C%0A%20%20%20%20%20%20%20%20borderWidth%3A%201%2C%0A%20%20%20%20%20%20%7D%2C%0A%20%20%20%20%5D%2C%0A%20%20%7D%2C%0A%20%20options%3A%20%7B%0A%20%20%20%20plugins%3A%20%7B%0A%20%20%20%20%20%20datalabels%3A%20%7B%0A%20%20%20%20%20%20%20%20anchor%3A%20%27center%27%2C%0A%20%20%20%20%20%20%20%20align%3A%20%27center%27%2C%0A%20%20%20%20%20%20%20%20color%3A%20%27%23000%27%0A%20%20%20%20%20%20%7D%2C%0A%20%20%20%20%7D%2C%0A%20%20%7D%2C%0A%7D%0A)



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


### [PHP 8.0 with JIT](./prime-number/php/cmd.php)
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
docker run --rm --volume $(pwd):/app benchmark g++ /app/prime-number/c++/cmd.cpp -o /app/prime-number/c++/cmd.cpp_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/c++/cmd.cpp_bin 5000
```
```
g++ (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.



The latest prime number: 48611

real    0m3.699s
user    0m0.030s
sys     0m0.012s
```


### [Assembler/NASM](./prime-number/assembler/cmd.asm)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark nasm --version && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark nasm -f elf /app/prime-number/assembler/cmd.asm && \
docker run --rm --volume $(pwd):/app benchmark ld -m elf_i386 /app/prime-number/assembler/cmd.o -o /app/prime-number/assembler/cmd.asm_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/assembler/cmd.asm_bin 5000
```
```
NASM version 2.14.02


The latest prime number: 000048611

real    0m3.101s
user    0m0.050s
sys     0m0.043s
```


### [Pascal](./prime-number/pascal/cmd.pas)
```
docker build -t benchmark . > /dev/null && \
docker run --rm benchmark fpc -iW && echo '' && echo '' && \
docker run --rm --volume $(pwd):/app benchmark fpc /app/prime-number/pascal/cmd.pas -o/app/prime-number/pascal/cmd.pas_bin && \
time docker run --rm --volume $(pwd):/app benchmark /app/prime-number/pascal/cmd.pas_bin 5000
```
```
3.0.4+dfsg-23


Free Pascal Compiler version 3.0.4+dfsg-23 [2019/11/25] for x86_64
Copyright (c) 1993-2017 by Florian Klaempfl and others
Target OS: Linux for x86-64
Compiling /app/prime-number/pascal/cmd.pas
Linking /app/prime-number/pascal/cmd.pas_bin
/usr/bin/ld.bfd: warning: /app/prime-number/link.res contains output sections; did you forget -T?
30 lines compiled, 0.1 sec
The latest prime number: 48611

real    0m9.802s
user    0m0.060s
sys     0m0.039s
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
