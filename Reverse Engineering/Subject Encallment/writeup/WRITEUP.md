There's an uncalled function called printFlag(), we can use gdb to call it.
```
$ gdb chall
> break main
> r
> jump printFlag
```