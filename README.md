# Crash

Trigger a segmentation fault in Elixir: 

```
$ git clone https://github.com/larskluge/crash.git
$ cd crash
$ mix deps.get

$ mix test
[1]    54071 segmentation fault  mix test

$ elixir -v
Erlang/OTP 22 [erts-10.4.4] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe] [dtrace]

Elixir 1.9.1 (compiled with Erlang/OTP 22)

$ uname -a
Darwin unknown18 18.7.0 Darwin Kernel Version 18.7.0: Thu Jun 20 18:42:21 PDT 2019; root:xnu-4903.270.47~4/RELEASE_X86_64 x86_64
```
