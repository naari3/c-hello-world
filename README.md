[hello.c](hello.c)

```bash
cc hello.c -o hello
```

```
# objdump -D -M intel hello
00000000004bce60 <main>:
  4bce60:       48 c7 c0 01 00 00 00    mov    rax,0x1
  4bce67:       48 c7 c7 01 00 00 00    mov    rdi,0x1
  4bce6e:       48 8d 35 13 00 00 00    lea    rsi,[rip+0x13]        # 4bce88 <msg>
  4bce75:       48 c7 c2 0d 00 00 00    mov    rdx,0xd
  4bce7c:       0f 05                   syscall
  4bce7e:       48 c7 c0 00 00 00 00    mov    rax,0x0
  4bce85:       c3                      ret
        ...

00000000004bce88 <msg>:
  4bce88:       48                      rex.W
  4bce89:       65 6c                   gs ins BYTE PTR es:[rdi],dx
  4bce8b:       6c                      ins    BYTE PTR es:[rdi],dx
  4bce8c:       6f                      outs   dx,DWORD PTR ds:[rsi]
  4bce8d:       2c 20                   sub    al,0x20
  4bce8f:       57                      push   rdi
  4bce90:       6f                      outs   dx,DWORD PTR ds:[rsi]
  4bce91:       72 6c                   jb     4bceff <_IO_2_1_stderr_+0x1f>
  4bce93:       64 0a 00                or     al,BYTE PTR fs:[rax]
        ...
```
