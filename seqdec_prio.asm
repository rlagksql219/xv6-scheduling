
_seqdec_prio:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
            for (j = 0; j < 1024 * 10; j++)
                data[j]++;
    }
}
int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
    if (argc < 2)
  14:	83 39 01             	cmpl   $0x1,(%ecx)
            for (j = 0; j < 1024 * 10; j++)
                data[j]++;
    }
}
int main(int argc, char *argv[])
{
  17:	8b 41 04             	mov    0x4(%ecx),%eax
    if (argc < 2)
  1a:	0f 8e 95 00 00 00    	jle    b5 <main+0xb5>
    {
        printf(1, "test-case <number-of-children>\n");
        exit();
    }
    int N = atoi(argv[1]);
  20:	83 ec 0c             	sub    $0xc,%esp
  23:	ff 70 04             	pushl  0x4(%eax)
  26:	e8 a5 03 00 00       	call   3d0 <atoi>
  2b:	89 c3                	mov    %eax,%ebx

    int pids[N];
  2d:	8d 04 85 12 00 00 00 	lea    0x12(,%eax,4),%eax
  34:	83 c4 10             	add    $0x10,%esp
  37:	c1 e8 04             	shr    $0x4,%eax
  3a:	c1 e0 04             	shl    $0x4,%eax
  3d:	29 c4                	sub    %eax,%esp
  3f:	89 e6                	mov    %esp,%esi
    int rets[N];
  41:	29 c4                	sub    %eax,%esp
  43:	89 65 e4             	mov    %esp,-0x1c(%ebp)
    set_prio(1000);
  46:	83 ec 0c             	sub    $0xc,%esp
  49:	68 e8 03 00 00       	push   $0x3e8
  4e:	e8 b7 04 00 00       	call   50a <set_prio>
    printf(1, "Priority of parent process = %d\n", get_prio());
  53:	e8 ba 04 00 00       	call   512 <get_prio>
  58:	83 c4 0c             	add    $0xc,%esp
  5b:	50                   	push   %eax
  5c:	68 68 09 00 00       	push   $0x968
  61:	6a 01                	push   $0x1
  63:	e8 58 05 00 00       	call   5c0 <printf>

    for (int i = 0; i < N; i++)
  68:	83 c4 10             	add    $0x10,%esp
  6b:	85 db                	test   %ebx,%ebx
  6d:	0f 8e f9 00 00 00    	jle    16c <main+0x16c>
  73:	31 ff                	xor    %edi,%edi
  75:	eb 15                	jmp    8c <main+0x8c>
  77:	89 f6                	mov    %esi,%esi
  79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
        {
            set_prio(priority);
            delay(20);
            exit();
        }
        else if (ret > 0)
  80:	7e 46                	jle    c8 <main+0xc8>
        {
            pids[i] = ret;
  82:	89 04 be             	mov    %eax,(%esi,%edi,4)
    int pids[N];
    int rets[N];
    set_prio(1000);
    printf(1, "Priority of parent process = %d\n", get_prio());

    for (int i = 0; i < N; i++)
  85:	83 c7 01             	add    $0x1,%edi
  88:	39 fb                	cmp    %edi,%ebx
  8a:	74 4f                	je     db <main+0xdb>
    {
      int priority = 10*(N - i);

        int ret = fork();
  8c:	e8 a9 03 00 00       	call   43a <fork>
        if (ret == 0)
  91:	83 f8 00             	cmp    $0x0,%eax
  94:	75 ea                	jne    80 <main+0x80>
        {
            set_prio(priority);
  96:	29 fb                	sub    %edi,%ebx
  98:	83 ec 0c             	sub    $0xc,%esp
  9b:	6b db 0a             	imul   $0xa,%ebx,%ebx
  9e:	53                   	push   %ebx
  9f:	e8 66 04 00 00       	call   50a <set_prio>
            delay(20);
  a4:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
  ab:	e8 e0 00 00 00       	call   190 <delay>
            exit();
  b0:	e8 8d 03 00 00       	call   442 <exit>
}
int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        printf(1, "test-case <number-of-children>\n");
  b5:	50                   	push   %eax
  b6:	50                   	push   %eax
  b7:	68 48 09 00 00       	push   $0x948
  bc:	6a 01                	push   $0x1
  be:	e8 fd 04 00 00       	call   5c0 <printf>
        exit();
  c3:	e8 7a 03 00 00       	call   442 <exit>
        {
            pids[i] = ret;
        }
        else
        {
            printf(1, "fork error \n");
  c8:	57                   	push   %edi
  c9:	57                   	push   %edi
  ca:	68 fd 08 00 00       	push   $0x8fd
  cf:	6a 01                	push   $0x1
  d1:	e8 ea 04 00 00       	call   5c0 <printf>
            exit();
  d6:	e8 67 03 00 00       	call   442 <exit>
  db:	31 d2                	xor    %edx,%edx
  dd:	8d 76 00             	lea    0x0(%esi),%esi
  e0:	89 55 e0             	mov    %edx,-0x20(%ebp)
        }
    }

    for (int i = 0; i < N; i++)
    {
        rets[i] = wait();
  e3:	e8 62 03 00 00       	call   44a <wait>
  e8:	8b 55 e0             	mov    -0x20(%ebp),%edx
  eb:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  ee:	89 04 91             	mov    %eax,(%ecx,%edx,4)
            printf(1, "fork error \n");
            exit();
        }
    }

    for (int i = 0; i < N; i++)
  f1:	83 c2 01             	add    $0x1,%edx
  f4:	39 d3                	cmp    %edx,%ebx
  f6:	75 e8                	jne    e0 <main+0xe0>
    {
        rets[i] = wait();
    }

    printf(1, "\nAll children completed\n");
  f8:	52                   	push   %edx
  f9:	52                   	push   %edx
  fa:	68 0a 09 00 00       	push   $0x90a
  ff:	6a 01                	push   $0x1
 101:	e8 ba 04 00 00       	call   5c0 <printf>
 106:	83 c4 10             	add    $0x10,%esp
 109:	31 c0                	xor    %eax,%eax
 10b:	90                   	nop
 10c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for (int i = 0; i < N; i++)
        printf(1, "Child %d.    pid %d\n", i, pids[i]);
 110:	ff 34 86             	pushl  (%esi,%eax,4)
 113:	50                   	push   %eax
 114:	68 31 09 00 00       	push   $0x931
 119:	6a 01                	push   $0x1
 11b:	89 45 e0             	mov    %eax,-0x20(%ebp)
 11e:	e8 9d 04 00 00       	call   5c0 <printf>
    {
        rets[i] = wait();
    }

    printf(1, "\nAll children completed\n");
    for (int i = 0; i < N; i++)
 123:	8b 45 e0             	mov    -0x20(%ebp),%eax
 126:	83 c4 10             	add    $0x10,%esp
 129:	83 c0 01             	add    $0x1,%eax
 12c:	39 c3                	cmp    %eax,%ebx
 12e:	7f e0                	jg     110 <main+0x110>
        printf(1, "Child %d.    pid %d\n", i, pids[i]);

    printf(1, "\nExit order \n");
 130:	50                   	push   %eax
 131:	50                   	push   %eax
 132:	31 f6                	xor    %esi,%esi
 134:	68 23 09 00 00       	push   $0x923
 139:	6a 01                	push   $0x1
 13b:	e8 80 04 00 00       	call   5c0 <printf>
 140:	83 c4 10             	add    $0x10,%esp
 143:	90                   	nop
 144:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for (int i = 0; i < N; i++)
        printf(1, "pid %d\n", rets[i]);
 148:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 14b:	83 ec 04             	sub    $0x4,%esp
 14e:	ff 34 b0             	pushl  (%eax,%esi,4)
 151:	68 3e 09 00 00       	push   $0x93e
    printf(1, "\nAll children completed\n");
    for (int i = 0; i < N; i++)
        printf(1, "Child %d.    pid %d\n", i, pids[i]);

    printf(1, "\nExit order \n");
    for (int i = 0; i < N; i++)
 156:	83 c6 01             	add    $0x1,%esi
        printf(1, "pid %d\n", rets[i]);
 159:	6a 01                	push   $0x1
 15b:	e8 60 04 00 00       	call   5c0 <printf>
    printf(1, "\nAll children completed\n");
    for (int i = 0; i < N; i++)
        printf(1, "Child %d.    pid %d\n", i, pids[i]);

    printf(1, "\nExit order \n");
    for (int i = 0; i < N; i++)
 160:	83 c4 10             	add    $0x10,%esp
 163:	39 f3                	cmp    %esi,%ebx
 165:	7f e1                	jg     148 <main+0x148>
        printf(1, "pid %d\n", rets[i]);

    exit();
 167:	e8 d6 02 00 00       	call   442 <exit>
    for (int i = 0; i < N; i++)
    {
        rets[i] = wait();
    }

    printf(1, "\nAll children completed\n");
 16c:	51                   	push   %ecx
 16d:	51                   	push   %ecx
 16e:	68 0a 09 00 00       	push   $0x90a
 173:	6a 01                	push   $0x1
 175:	e8 46 04 00 00       	call   5c0 <printf>
    for (int i = 0; i < N; i++)
        printf(1, "Child %d.    pid %d\n", i, pids[i]);

    printf(1, "\nExit order \n");
 17a:	5b                   	pop    %ebx
 17b:	5e                   	pop    %esi
 17c:	68 23 09 00 00       	push   $0x923
 181:	6a 01                	push   $0x1
 183:	e8 38 04 00 00       	call   5c0 <printf>
 188:	83 c4 10             	add    $0x10,%esp
 18b:	eb da                	jmp    167 <main+0x167>
 18d:	66 90                	xchg   %ax,%ax
 18f:	90                   	nop

00000190 <delay>:
#include "types.h"
#include "stat.h"
#include "user.h"

void delay(int count)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	57                   	push   %edi
 194:	56                   	push   %esi
 195:	53                   	push   %ebx
 196:	83 ec 18             	sub    $0x18,%esp
 199:	8b 7d 08             	mov    0x8(%ebp),%edi
    int i;
    int j, k;
    int *data;

    data = (int *)malloc(sizeof(int) * 1024 * 10);
 19c:	68 00 a0 00 00       	push   $0xa000
 1a1:	e8 4a 06 00 00       	call   7f0 <malloc>
    if (data <= 0)
 1a6:	83 c4 10             	add    $0x10,%esp
 1a9:	85 c0                	test   %eax,%eax
{
    int i;
    int j, k;
    int *data;

    data = (int *)malloc(sizeof(int) * 1024 * 10);
 1ab:	89 c3                	mov    %eax,%ebx
    if (data <= 0)
 1ad:	75 12                	jne    1c1 <delay+0x31>
        printf(1, "Error on memory allocation \n");
 1af:	83 ec 08             	sub    $0x8,%esp
 1b2:	68 e0 08 00 00       	push   $0x8e0
 1b7:	6a 01                	push   $0x1
 1b9:	e8 02 04 00 00       	call   5c0 <printf>
 1be:	83 c4 10             	add    $0x10,%esp

    for (i = 0; i < count; i++)
 1c1:	31 f6                	xor    %esi,%esi
 1c3:	85 ff                	test   %edi,%edi
 1c5:	8d 8b 00 a0 00 00    	lea    0xa000(%ebx),%ecx
 1cb:	7e 29                	jle    1f6 <delay+0x66>
 1cd:	b8 44 16 00 00       	mov    $0x1644,%eax
 1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d8:	89 da                	mov    %ebx,%edx
 1da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    {
        for (k = 0; k < 5700; k++)
            for (j = 0; j < 1024 * 10; j++)
                data[j]++;
 1e0:	83 02 01             	addl   $0x1,(%edx)
 1e3:	83 c2 04             	add    $0x4,%edx
        printf(1, "Error on memory allocation \n");

    for (i = 0; i < count; i++)
    {
        for (k = 0; k < 5700; k++)
            for (j = 0; j < 1024 * 10; j++)
 1e6:	39 ca                	cmp    %ecx,%edx
 1e8:	75 f6                	jne    1e0 <delay+0x50>
    if (data <= 0)
        printf(1, "Error on memory allocation \n");

    for (i = 0; i < count; i++)
    {
        for (k = 0; k < 5700; k++)
 1ea:	83 e8 01             	sub    $0x1,%eax
 1ed:	75 e9                	jne    1d8 <delay+0x48>

    data = (int *)malloc(sizeof(int) * 1024 * 10);
    if (data <= 0)
        printf(1, "Error on memory allocation \n");

    for (i = 0; i < count; i++)
 1ef:	83 c6 01             	add    $0x1,%esi
 1f2:	39 f7                	cmp    %esi,%edi
 1f4:	75 d7                	jne    1cd <delay+0x3d>
    {
        for (k = 0; k < 5700; k++)
            for (j = 0; j < 1024 * 10; j++)
                data[j]++;
    }
}
 1f6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1f9:	5b                   	pop    %ebx
 1fa:	5e                   	pop    %esi
 1fb:	5f                   	pop    %edi
 1fc:	5d                   	pop    %ebp
 1fd:	c3                   	ret    
 1fe:	66 90                	xchg   %ax,%ax

00000200 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	53                   	push   %ebx
 204:	8b 45 08             	mov    0x8(%ebp),%eax
 207:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 20a:	89 c2                	mov    %eax,%edx
 20c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 210:	83 c1 01             	add    $0x1,%ecx
 213:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 217:	83 c2 01             	add    $0x1,%edx
 21a:	84 db                	test   %bl,%bl
 21c:	88 5a ff             	mov    %bl,-0x1(%edx)
 21f:	75 ef                	jne    210 <strcpy+0x10>
    ;
  return os;
}
 221:	5b                   	pop    %ebx
 222:	5d                   	pop    %ebp
 223:	c3                   	ret    
 224:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 22a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000230 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	56                   	push   %esi
 234:	53                   	push   %ebx
 235:	8b 55 08             	mov    0x8(%ebp),%edx
 238:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 23b:	0f b6 02             	movzbl (%edx),%eax
 23e:	0f b6 19             	movzbl (%ecx),%ebx
 241:	84 c0                	test   %al,%al
 243:	75 1e                	jne    263 <strcmp+0x33>
 245:	eb 29                	jmp    270 <strcmp+0x40>
 247:	89 f6                	mov    %esi,%esi
 249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 250:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 253:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 256:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 259:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 25d:	84 c0                	test   %al,%al
 25f:	74 0f                	je     270 <strcmp+0x40>
 261:	89 f1                	mov    %esi,%ecx
 263:	38 d8                	cmp    %bl,%al
 265:	74 e9                	je     250 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 267:	29 d8                	sub    %ebx,%eax
}
 269:	5b                   	pop    %ebx
 26a:	5e                   	pop    %esi
 26b:	5d                   	pop    %ebp
 26c:	c3                   	ret    
 26d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 270:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 272:	29 d8                	sub    %ebx,%eax
}
 274:	5b                   	pop    %ebx
 275:	5e                   	pop    %esi
 276:	5d                   	pop    %ebp
 277:	c3                   	ret    
 278:	90                   	nop
 279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000280 <strlen>:

uint
strlen(const char *s)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 286:	80 39 00             	cmpb   $0x0,(%ecx)
 289:	74 12                	je     29d <strlen+0x1d>
 28b:	31 d2                	xor    %edx,%edx
 28d:	8d 76 00             	lea    0x0(%esi),%esi
 290:	83 c2 01             	add    $0x1,%edx
 293:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 297:	89 d0                	mov    %edx,%eax
 299:	75 f5                	jne    290 <strlen+0x10>
    ;
  return n;
}
 29b:	5d                   	pop    %ebp
 29c:	c3                   	ret    
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 29d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 29f:	5d                   	pop    %ebp
 2a0:	c3                   	ret    
 2a1:	eb 0d                	jmp    2b0 <memset>
 2a3:	90                   	nop
 2a4:	90                   	nop
 2a5:	90                   	nop
 2a6:	90                   	nop
 2a7:	90                   	nop
 2a8:	90                   	nop
 2a9:	90                   	nop
 2aa:	90                   	nop
 2ab:	90                   	nop
 2ac:	90                   	nop
 2ad:	90                   	nop
 2ae:	90                   	nop
 2af:	90                   	nop

000002b0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 2b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2ba:	8b 45 0c             	mov    0xc(%ebp),%eax
 2bd:	89 d7                	mov    %edx,%edi
 2bf:	fc                   	cld    
 2c0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2c2:	89 d0                	mov    %edx,%eax
 2c4:	5f                   	pop    %edi
 2c5:	5d                   	pop    %ebp
 2c6:	c3                   	ret    
 2c7:	89 f6                	mov    %esi,%esi
 2c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002d0 <strchr>:

char*
strchr(const char *s, char c)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	53                   	push   %ebx
 2d4:	8b 45 08             	mov    0x8(%ebp),%eax
 2d7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 2da:	0f b6 10             	movzbl (%eax),%edx
 2dd:	84 d2                	test   %dl,%dl
 2df:	74 1d                	je     2fe <strchr+0x2e>
    if(*s == c)
 2e1:	38 d3                	cmp    %dl,%bl
 2e3:	89 d9                	mov    %ebx,%ecx
 2e5:	75 0d                	jne    2f4 <strchr+0x24>
 2e7:	eb 17                	jmp    300 <strchr+0x30>
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2f0:	38 ca                	cmp    %cl,%dl
 2f2:	74 0c                	je     300 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 2f4:	83 c0 01             	add    $0x1,%eax
 2f7:	0f b6 10             	movzbl (%eax),%edx
 2fa:	84 d2                	test   %dl,%dl
 2fc:	75 f2                	jne    2f0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 2fe:	31 c0                	xor    %eax,%eax
}
 300:	5b                   	pop    %ebx
 301:	5d                   	pop    %ebp
 302:	c3                   	ret    
 303:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000310 <gets>:

char*
gets(char *buf, int max)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	57                   	push   %edi
 314:	56                   	push   %esi
 315:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 316:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 318:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 31b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 31e:	eb 29                	jmp    349 <gets+0x39>
    cc = read(0, &c, 1);
 320:	83 ec 04             	sub    $0x4,%esp
 323:	6a 01                	push   $0x1
 325:	57                   	push   %edi
 326:	6a 00                	push   $0x0
 328:	e8 2d 01 00 00       	call   45a <read>
    if(cc < 1)
 32d:	83 c4 10             	add    $0x10,%esp
 330:	85 c0                	test   %eax,%eax
 332:	7e 1d                	jle    351 <gets+0x41>
      break;
    buf[i++] = c;
 334:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 338:	8b 55 08             	mov    0x8(%ebp),%edx
 33b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 33d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 33f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 343:	74 1b                	je     360 <gets+0x50>
 345:	3c 0d                	cmp    $0xd,%al
 347:	74 17                	je     360 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 349:	8d 5e 01             	lea    0x1(%esi),%ebx
 34c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 34f:	7c cf                	jl     320 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 351:	8b 45 08             	mov    0x8(%ebp),%eax
 354:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 358:	8d 65 f4             	lea    -0xc(%ebp),%esp
 35b:	5b                   	pop    %ebx
 35c:	5e                   	pop    %esi
 35d:	5f                   	pop    %edi
 35e:	5d                   	pop    %ebp
 35f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 360:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 363:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 365:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 369:	8d 65 f4             	lea    -0xc(%ebp),%esp
 36c:	5b                   	pop    %ebx
 36d:	5e                   	pop    %esi
 36e:	5f                   	pop    %edi
 36f:	5d                   	pop    %ebp
 370:	c3                   	ret    
 371:	eb 0d                	jmp    380 <stat>
 373:	90                   	nop
 374:	90                   	nop
 375:	90                   	nop
 376:	90                   	nop
 377:	90                   	nop
 378:	90                   	nop
 379:	90                   	nop
 37a:	90                   	nop
 37b:	90                   	nop
 37c:	90                   	nop
 37d:	90                   	nop
 37e:	90                   	nop
 37f:	90                   	nop

00000380 <stat>:

int
stat(const char *n, struct stat *st)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	56                   	push   %esi
 384:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 385:	83 ec 08             	sub    $0x8,%esp
 388:	6a 00                	push   $0x0
 38a:	ff 75 08             	pushl  0x8(%ebp)
 38d:	e8 f0 00 00 00       	call   482 <open>
  if(fd < 0)
 392:	83 c4 10             	add    $0x10,%esp
 395:	85 c0                	test   %eax,%eax
 397:	78 27                	js     3c0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 399:	83 ec 08             	sub    $0x8,%esp
 39c:	ff 75 0c             	pushl  0xc(%ebp)
 39f:	89 c3                	mov    %eax,%ebx
 3a1:	50                   	push   %eax
 3a2:	e8 f3 00 00 00       	call   49a <fstat>
 3a7:	89 c6                	mov    %eax,%esi
  close(fd);
 3a9:	89 1c 24             	mov    %ebx,(%esp)
 3ac:	e8 b9 00 00 00       	call   46a <close>
  return r;
 3b1:	83 c4 10             	add    $0x10,%esp
 3b4:	89 f0                	mov    %esi,%eax
}
 3b6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3b9:	5b                   	pop    %ebx
 3ba:	5e                   	pop    %esi
 3bb:	5d                   	pop    %ebp
 3bc:	c3                   	ret    
 3bd:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 3c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 3c5:	eb ef                	jmp    3b6 <stat+0x36>
 3c7:	89 f6                	mov    %esi,%esi
 3c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003d0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	53                   	push   %ebx
 3d4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3d7:	0f be 11             	movsbl (%ecx),%edx
 3da:	8d 42 d0             	lea    -0x30(%edx),%eax
 3dd:	3c 09                	cmp    $0x9,%al
 3df:	b8 00 00 00 00       	mov    $0x0,%eax
 3e4:	77 1f                	ja     405 <atoi+0x35>
 3e6:	8d 76 00             	lea    0x0(%esi),%esi
 3e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 3f0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 3f3:	83 c1 01             	add    $0x1,%ecx
 3f6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3fa:	0f be 11             	movsbl (%ecx),%edx
 3fd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 400:	80 fb 09             	cmp    $0x9,%bl
 403:	76 eb                	jbe    3f0 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 405:	5b                   	pop    %ebx
 406:	5d                   	pop    %ebp
 407:	c3                   	ret    
 408:	90                   	nop
 409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000410 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	56                   	push   %esi
 414:	53                   	push   %ebx
 415:	8b 5d 10             	mov    0x10(%ebp),%ebx
 418:	8b 45 08             	mov    0x8(%ebp),%eax
 41b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 41e:	85 db                	test   %ebx,%ebx
 420:	7e 14                	jle    436 <memmove+0x26>
 422:	31 d2                	xor    %edx,%edx
 424:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 428:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 42c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 42f:	83 c2 01             	add    $0x1,%edx
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 432:	39 da                	cmp    %ebx,%edx
 434:	75 f2                	jne    428 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 436:	5b                   	pop    %ebx
 437:	5e                   	pop    %esi
 438:	5d                   	pop    %ebp
 439:	c3                   	ret    

0000043a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 43a:	b8 01 00 00 00       	mov    $0x1,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <exit>:
SYSCALL(exit)
 442:	b8 02 00 00 00       	mov    $0x2,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <wait>:
SYSCALL(wait)
 44a:	b8 03 00 00 00       	mov    $0x3,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <pipe>:
SYSCALL(pipe)
 452:	b8 04 00 00 00       	mov    $0x4,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <read>:
SYSCALL(read)
 45a:	b8 05 00 00 00       	mov    $0x5,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <write>:
SYSCALL(write)
 462:	b8 10 00 00 00       	mov    $0x10,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <close>:
SYSCALL(close)
 46a:	b8 15 00 00 00       	mov    $0x15,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <kill>:
SYSCALL(kill)
 472:	b8 06 00 00 00       	mov    $0x6,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <exec>:
SYSCALL(exec)
 47a:	b8 07 00 00 00       	mov    $0x7,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    

00000482 <open>:
SYSCALL(open)
 482:	b8 0f 00 00 00       	mov    $0xf,%eax
 487:	cd 40                	int    $0x40
 489:	c3                   	ret    

0000048a <mknod>:
SYSCALL(mknod)
 48a:	b8 11 00 00 00       	mov    $0x11,%eax
 48f:	cd 40                	int    $0x40
 491:	c3                   	ret    

00000492 <unlink>:
SYSCALL(unlink)
 492:	b8 12 00 00 00       	mov    $0x12,%eax
 497:	cd 40                	int    $0x40
 499:	c3                   	ret    

0000049a <fstat>:
SYSCALL(fstat)
 49a:	b8 08 00 00 00       	mov    $0x8,%eax
 49f:	cd 40                	int    $0x40
 4a1:	c3                   	ret    

000004a2 <link>:
SYSCALL(link)
 4a2:	b8 13 00 00 00       	mov    $0x13,%eax
 4a7:	cd 40                	int    $0x40
 4a9:	c3                   	ret    

000004aa <mkdir>:
SYSCALL(mkdir)
 4aa:	b8 14 00 00 00       	mov    $0x14,%eax
 4af:	cd 40                	int    $0x40
 4b1:	c3                   	ret    

000004b2 <chdir>:
SYSCALL(chdir)
 4b2:	b8 09 00 00 00       	mov    $0x9,%eax
 4b7:	cd 40                	int    $0x40
 4b9:	c3                   	ret    

000004ba <dup>:
SYSCALL(dup)
 4ba:	b8 0a 00 00 00       	mov    $0xa,%eax
 4bf:	cd 40                	int    $0x40
 4c1:	c3                   	ret    

000004c2 <getpid>:
SYSCALL(getpid)
 4c2:	b8 0b 00 00 00       	mov    $0xb,%eax
 4c7:	cd 40                	int    $0x40
 4c9:	c3                   	ret    

000004ca <sbrk>:
SYSCALL(sbrk)
 4ca:	b8 0c 00 00 00       	mov    $0xc,%eax
 4cf:	cd 40                	int    $0x40
 4d1:	c3                   	ret    

000004d2 <sleep>:
SYSCALL(sleep)
 4d2:	b8 0d 00 00 00       	mov    $0xd,%eax
 4d7:	cd 40                	int    $0x40
 4d9:	c3                   	ret    

000004da <uptime>:
SYSCALL(uptime)
 4da:	b8 0e 00 00 00       	mov    $0xe,%eax
 4df:	cd 40                	int    $0x40
 4e1:	c3                   	ret    

000004e2 <hello>:
SYSCALL(hello)
 4e2:	b8 16 00 00 00       	mov    $0x16,%eax
 4e7:	cd 40                	int    $0x40
 4e9:	c3                   	ret    

000004ea <hello_name>:
SYSCALL(hello_name)
 4ea:	b8 17 00 00 00       	mov    $0x17,%eax
 4ef:	cd 40                	int    $0x40
 4f1:	c3                   	ret    

000004f2 <get_num_proc>:
SYSCALL(get_num_proc)
 4f2:	b8 18 00 00 00       	mov    $0x18,%eax
 4f7:	cd 40                	int    $0x40
 4f9:	c3                   	ret    

000004fa <get_max_pid>:
SYSCALL(get_max_pid)
 4fa:	b8 19 00 00 00       	mov    $0x19,%eax
 4ff:	cd 40                	int    $0x40
 501:	c3                   	ret    

00000502 <get_proc_info>:
SYSCALL(get_proc_info)
 502:	b8 1a 00 00 00       	mov    $0x1a,%eax
 507:	cd 40                	int    $0x40
 509:	c3                   	ret    

0000050a <set_prio>:
SYSCALL(set_prio)
 50a:	b8 1b 00 00 00       	mov    $0x1b,%eax
 50f:	cd 40                	int    $0x40
 511:	c3                   	ret    

00000512 <get_prio>:
SYSCALL(get_prio)
 512:	b8 1c 00 00 00       	mov    $0x1c,%eax
 517:	cd 40                	int    $0x40
 519:	c3                   	ret    
 51a:	66 90                	xchg   %ax,%ax
 51c:	66 90                	xchg   %ax,%ax
 51e:	66 90                	xchg   %ax,%ax

00000520 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	57                   	push   %edi
 524:	56                   	push   %esi
 525:	53                   	push   %ebx
 526:	89 c6                	mov    %eax,%esi
 528:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 52b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 52e:	85 db                	test   %ebx,%ebx
 530:	74 7e                	je     5b0 <printint+0x90>
 532:	89 d0                	mov    %edx,%eax
 534:	c1 e8 1f             	shr    $0x1f,%eax
 537:	84 c0                	test   %al,%al
 539:	74 75                	je     5b0 <printint+0x90>
    neg = 1;
    x = -xx;
 53b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 53d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 544:	f7 d8                	neg    %eax
 546:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 549:	31 ff                	xor    %edi,%edi
 54b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 54e:	89 ce                	mov    %ecx,%esi
 550:	eb 08                	jmp    55a <printint+0x3a>
 552:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 558:	89 cf                	mov    %ecx,%edi
 55a:	31 d2                	xor    %edx,%edx
 55c:	8d 4f 01             	lea    0x1(%edi),%ecx
 55f:	f7 f6                	div    %esi
 561:	0f b6 92 94 09 00 00 	movzbl 0x994(%edx),%edx
  }while((x /= base) != 0);
 568:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 56a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 56d:	75 e9                	jne    558 <printint+0x38>
  if(neg)
 56f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 572:	8b 75 c0             	mov    -0x40(%ebp),%esi
 575:	85 c0                	test   %eax,%eax
 577:	74 08                	je     581 <printint+0x61>
    buf[i++] = '-';
 579:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 57e:	8d 4f 02             	lea    0x2(%edi),%ecx
 581:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 585:	8d 76 00             	lea    0x0(%esi),%esi
 588:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 58b:	83 ec 04             	sub    $0x4,%esp
 58e:	83 ef 01             	sub    $0x1,%edi
 591:	6a 01                	push   $0x1
 593:	53                   	push   %ebx
 594:	56                   	push   %esi
 595:	88 45 d7             	mov    %al,-0x29(%ebp)
 598:	e8 c5 fe ff ff       	call   462 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 59d:	83 c4 10             	add    $0x10,%esp
 5a0:	39 df                	cmp    %ebx,%edi
 5a2:	75 e4                	jne    588 <printint+0x68>
    putc(fd, buf[i]);
}
 5a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5a7:	5b                   	pop    %ebx
 5a8:	5e                   	pop    %esi
 5a9:	5f                   	pop    %edi
 5aa:	5d                   	pop    %ebp
 5ab:	c3                   	ret    
 5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 5b0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 5b2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 5b9:	eb 8b                	jmp    546 <printint+0x26>
 5bb:	90                   	nop
 5bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005c0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	56                   	push   %esi
 5c5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5c6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5c9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5cc:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5cf:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5d2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5d5:	0f b6 1e             	movzbl (%esi),%ebx
 5d8:	83 c6 01             	add    $0x1,%esi
 5db:	84 db                	test   %bl,%bl
 5dd:	0f 84 b0 00 00 00    	je     693 <printf+0xd3>
 5e3:	31 d2                	xor    %edx,%edx
 5e5:	eb 39                	jmp    620 <printf+0x60>
 5e7:	89 f6                	mov    %esi,%esi
 5e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 5f0:	83 f8 25             	cmp    $0x25,%eax
 5f3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 5f6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 5fb:	74 18                	je     615 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5fd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 600:	83 ec 04             	sub    $0x4,%esp
 603:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 606:	6a 01                	push   $0x1
 608:	50                   	push   %eax
 609:	57                   	push   %edi
 60a:	e8 53 fe ff ff       	call   462 <write>
 60f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 612:	83 c4 10             	add    $0x10,%esp
 615:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 618:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 61c:	84 db                	test   %bl,%bl
 61e:	74 73                	je     693 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 620:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 622:	0f be cb             	movsbl %bl,%ecx
 625:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 628:	74 c6                	je     5f0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 62a:	83 fa 25             	cmp    $0x25,%edx
 62d:	75 e6                	jne    615 <printf+0x55>
      if(c == 'd'){
 62f:	83 f8 64             	cmp    $0x64,%eax
 632:	0f 84 f8 00 00 00    	je     730 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 638:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 63e:	83 f9 70             	cmp    $0x70,%ecx
 641:	74 5d                	je     6a0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 643:	83 f8 73             	cmp    $0x73,%eax
 646:	0f 84 84 00 00 00    	je     6d0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 64c:	83 f8 63             	cmp    $0x63,%eax
 64f:	0f 84 ea 00 00 00    	je     73f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 655:	83 f8 25             	cmp    $0x25,%eax
 658:	0f 84 c2 00 00 00    	je     720 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 65e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 661:	83 ec 04             	sub    $0x4,%esp
 664:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 668:	6a 01                	push   $0x1
 66a:	50                   	push   %eax
 66b:	57                   	push   %edi
 66c:	e8 f1 fd ff ff       	call   462 <write>
 671:	83 c4 0c             	add    $0xc,%esp
 674:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 677:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 67a:	6a 01                	push   $0x1
 67c:	50                   	push   %eax
 67d:	57                   	push   %edi
 67e:	83 c6 01             	add    $0x1,%esi
 681:	e8 dc fd ff ff       	call   462 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 686:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 68a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 68d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 68f:	84 db                	test   %bl,%bl
 691:	75 8d                	jne    620 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 693:	8d 65 f4             	lea    -0xc(%ebp),%esp
 696:	5b                   	pop    %ebx
 697:	5e                   	pop    %esi
 698:	5f                   	pop    %edi
 699:	5d                   	pop    %ebp
 69a:	c3                   	ret    
 69b:	90                   	nop
 69c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 6a0:	83 ec 0c             	sub    $0xc,%esp
 6a3:	b9 10 00 00 00       	mov    $0x10,%ecx
 6a8:	6a 00                	push   $0x0
 6aa:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 6ad:	89 f8                	mov    %edi,%eax
 6af:	8b 13                	mov    (%ebx),%edx
 6b1:	e8 6a fe ff ff       	call   520 <printint>
        ap++;
 6b6:	89 d8                	mov    %ebx,%eax
 6b8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6bb:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 6bd:	83 c0 04             	add    $0x4,%eax
 6c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6c3:	e9 4d ff ff ff       	jmp    615 <printf+0x55>
 6c8:	90                   	nop
 6c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 6d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6d3:	8b 18                	mov    (%eax),%ebx
        ap++;
 6d5:	83 c0 04             	add    $0x4,%eax
 6d8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 6db:	b8 8c 09 00 00       	mov    $0x98c,%eax
 6e0:	85 db                	test   %ebx,%ebx
 6e2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 6e5:	0f b6 03             	movzbl (%ebx),%eax
 6e8:	84 c0                	test   %al,%al
 6ea:	74 23                	je     70f <printf+0x14f>
 6ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6f0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6f3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 6f6:	83 ec 04             	sub    $0x4,%esp
 6f9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 6fb:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6fe:	50                   	push   %eax
 6ff:	57                   	push   %edi
 700:	e8 5d fd ff ff       	call   462 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 705:	0f b6 03             	movzbl (%ebx),%eax
 708:	83 c4 10             	add    $0x10,%esp
 70b:	84 c0                	test   %al,%al
 70d:	75 e1                	jne    6f0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 70f:	31 d2                	xor    %edx,%edx
 711:	e9 ff fe ff ff       	jmp    615 <printf+0x55>
 716:	8d 76 00             	lea    0x0(%esi),%esi
 719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 720:	83 ec 04             	sub    $0x4,%esp
 723:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 726:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 729:	6a 01                	push   $0x1
 72b:	e9 4c ff ff ff       	jmp    67c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 730:	83 ec 0c             	sub    $0xc,%esp
 733:	b9 0a 00 00 00       	mov    $0xa,%ecx
 738:	6a 01                	push   $0x1
 73a:	e9 6b ff ff ff       	jmp    6aa <printf+0xea>
 73f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 742:	83 ec 04             	sub    $0x4,%esp
 745:	8b 03                	mov    (%ebx),%eax
 747:	6a 01                	push   $0x1
 749:	88 45 e4             	mov    %al,-0x1c(%ebp)
 74c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 74f:	50                   	push   %eax
 750:	57                   	push   %edi
 751:	e8 0c fd ff ff       	call   462 <write>
 756:	e9 5b ff ff ff       	jmp    6b6 <printf+0xf6>
 75b:	66 90                	xchg   %ax,%ax
 75d:	66 90                	xchg   %ax,%ax
 75f:	90                   	nop

00000760 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 760:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 761:	a1 64 0c 00 00       	mov    0xc64,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 766:	89 e5                	mov    %esp,%ebp
 768:	57                   	push   %edi
 769:	56                   	push   %esi
 76a:	53                   	push   %ebx
 76b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 76e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 770:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 773:	39 c8                	cmp    %ecx,%eax
 775:	73 19                	jae    790 <free+0x30>
 777:	89 f6                	mov    %esi,%esi
 779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 780:	39 d1                	cmp    %edx,%ecx
 782:	72 1c                	jb     7a0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 784:	39 d0                	cmp    %edx,%eax
 786:	73 18                	jae    7a0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 788:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 78a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 78c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 78e:	72 f0                	jb     780 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 790:	39 d0                	cmp    %edx,%eax
 792:	72 f4                	jb     788 <free+0x28>
 794:	39 d1                	cmp    %edx,%ecx
 796:	73 f0                	jae    788 <free+0x28>
 798:	90                   	nop
 799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 7a0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7a3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7a6:	39 d7                	cmp    %edx,%edi
 7a8:	74 19                	je     7c3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 7aa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 7ad:	8b 50 04             	mov    0x4(%eax),%edx
 7b0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7b3:	39 f1                	cmp    %esi,%ecx
 7b5:	74 23                	je     7da <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 7b7:	89 08                	mov    %ecx,(%eax)
  freep = p;
 7b9:	a3 64 0c 00 00       	mov    %eax,0xc64
}
 7be:	5b                   	pop    %ebx
 7bf:	5e                   	pop    %esi
 7c0:	5f                   	pop    %edi
 7c1:	5d                   	pop    %ebp
 7c2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 7c3:	03 72 04             	add    0x4(%edx),%esi
 7c6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7c9:	8b 10                	mov    (%eax),%edx
 7cb:	8b 12                	mov    (%edx),%edx
 7cd:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7d0:	8b 50 04             	mov    0x4(%eax),%edx
 7d3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7d6:	39 f1                	cmp    %esi,%ecx
 7d8:	75 dd                	jne    7b7 <free+0x57>
    p->s.size += bp->s.size;
 7da:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 7dd:	a3 64 0c 00 00       	mov    %eax,0xc64
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 7e2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 7e5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7e8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7ea:	5b                   	pop    %ebx
 7eb:	5e                   	pop    %esi
 7ec:	5f                   	pop    %edi
 7ed:	5d                   	pop    %ebp
 7ee:	c3                   	ret    
 7ef:	90                   	nop

000007f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7f0:	55                   	push   %ebp
 7f1:	89 e5                	mov    %esp,%ebp
 7f3:	57                   	push   %edi
 7f4:	56                   	push   %esi
 7f5:	53                   	push   %ebx
 7f6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 7fc:	8b 15 64 0c 00 00    	mov    0xc64,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 802:	8d 78 07             	lea    0x7(%eax),%edi
 805:	c1 ef 03             	shr    $0x3,%edi
 808:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 80b:	85 d2                	test   %edx,%edx
 80d:	0f 84 a3 00 00 00    	je     8b6 <malloc+0xc6>
 813:	8b 02                	mov    (%edx),%eax
 815:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 818:	39 cf                	cmp    %ecx,%edi
 81a:	76 74                	jbe    890 <malloc+0xa0>
 81c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 822:	be 00 10 00 00       	mov    $0x1000,%esi
 827:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 82e:	0f 43 f7             	cmovae %edi,%esi
 831:	ba 00 80 00 00       	mov    $0x8000,%edx
 836:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 83c:	0f 46 da             	cmovbe %edx,%ebx
 83f:	eb 10                	jmp    851 <malloc+0x61>
 841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 848:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 84a:	8b 48 04             	mov    0x4(%eax),%ecx
 84d:	39 cf                	cmp    %ecx,%edi
 84f:	76 3f                	jbe    890 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 851:	39 05 64 0c 00 00    	cmp    %eax,0xc64
 857:	89 c2                	mov    %eax,%edx
 859:	75 ed                	jne    848 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 85b:	83 ec 0c             	sub    $0xc,%esp
 85e:	53                   	push   %ebx
 85f:	e8 66 fc ff ff       	call   4ca <sbrk>
  if(p == (char*)-1)
 864:	83 c4 10             	add    $0x10,%esp
 867:	83 f8 ff             	cmp    $0xffffffff,%eax
 86a:	74 1c                	je     888 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 86c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 86f:	83 ec 0c             	sub    $0xc,%esp
 872:	83 c0 08             	add    $0x8,%eax
 875:	50                   	push   %eax
 876:	e8 e5 fe ff ff       	call   760 <free>
  return freep;
 87b:	8b 15 64 0c 00 00    	mov    0xc64,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 881:	83 c4 10             	add    $0x10,%esp
 884:	85 d2                	test   %edx,%edx
 886:	75 c0                	jne    848 <malloc+0x58>
        return 0;
 888:	31 c0                	xor    %eax,%eax
 88a:	eb 1c                	jmp    8a8 <malloc+0xb8>
 88c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 890:	39 cf                	cmp    %ecx,%edi
 892:	74 1c                	je     8b0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 894:	29 f9                	sub    %edi,%ecx
 896:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 899:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 89c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 89f:	89 15 64 0c 00 00    	mov    %edx,0xc64
      return (void*)(p + 1);
 8a5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 8a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8ab:	5b                   	pop    %ebx
 8ac:	5e                   	pop    %esi
 8ad:	5f                   	pop    %edi
 8ae:	5d                   	pop    %ebp
 8af:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 8b0:	8b 08                	mov    (%eax),%ecx
 8b2:	89 0a                	mov    %ecx,(%edx)
 8b4:	eb e9                	jmp    89f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 8b6:	c7 05 64 0c 00 00 68 	movl   $0xc68,0xc64
 8bd:	0c 00 00 
 8c0:	c7 05 68 0c 00 00 68 	movl   $0xc68,0xc68
 8c7:	0c 00 00 
    base.s.size = 0;
 8ca:	b8 68 0c 00 00       	mov    $0xc68,%eax
 8cf:	c7 05 6c 0c 00 00 00 	movl   $0x0,0xc6c
 8d6:	00 00 00 
 8d9:	e9 3e ff ff ff       	jmp    81c <malloc+0x2c>
