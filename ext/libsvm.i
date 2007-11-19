# 1 "libsvm.c"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "libsvm.c"
# 1 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h" 1
# 24 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
# 1 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/config.h" 1
# 25 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h" 2



# 1 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/defines.h" 1
# 49 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/defines.h"
void *ruby_xmalloc (long);
void *ruby_xcalloc (long,long);
void *ruby_xrealloc (void*,long);
void ruby_xfree (void*);
# 29 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h" 2


# 1 "/usr/include/stdlib.h" 1 3 4
# 61 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/available.h" 1 3 4
# 62 "/usr/include/stdlib.h" 2 3 4

# 1 "/usr/include/_types.h" 1 3 4
# 27 "/usr/include/_types.h" 3 4
# 1 "/usr/include/sys/_types.h" 1 3 4
# 32 "/usr/include/sys/_types.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 33 "/usr/include/sys/_types.h" 2 3 4
# 1 "/usr/include/machine/_types.h" 1 3 4
# 34 "/usr/include/machine/_types.h" 3 4
# 1 "/usr/include/i386/_types.h" 1 3 4
# 37 "/usr/include/i386/_types.h" 3 4
typedef signed char __int8_t;



typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;

typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
# 70 "/usr/include/i386/_types.h" 3 4
typedef int __darwin_ct_rune_t;





typedef union {
 char __mbstate8[128];
 long long _mbstateL;
} __mbstate_t;

typedef __mbstate_t __darwin_mbstate_t;


typedef int __darwin_ptrdiff_t;





typedef long unsigned int __darwin_size_t;





typedef __builtin_va_list __darwin_va_list;





typedef int __darwin_wchar_t;




typedef __darwin_wchar_t __darwin_rune_t;


typedef int __darwin_wint_t;




typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;
# 35 "/usr/include/machine/_types.h" 2 3 4
# 34 "/usr/include/sys/_types.h" 2 3 4
# 58 "/usr/include/sys/_types.h" 3 4
struct __darwin_pthread_handler_rec
{
 void (*__routine)(void *);
 void *__arg;
 struct __darwin_pthread_handler_rec *__next;
};
struct _opaque_pthread_attr_t { long __sig; char __opaque[36]; };
struct _opaque_pthread_cond_t { long __sig; char __opaque[24]; };
struct _opaque_pthread_condattr_t { long __sig; char __opaque[4]; };
struct _opaque_pthread_mutex_t { long __sig; char __opaque[40]; };
struct _opaque_pthread_mutexattr_t { long __sig; char __opaque[8]; };
struct _opaque_pthread_once_t { long __sig; char __opaque[4]; };
struct _opaque_pthread_rwlock_t { long __sig; char __opaque[124]; };
struct _opaque_pthread_rwlockattr_t { long __sig; char __opaque[12]; };
struct _opaque_pthread_t { long __sig; struct __darwin_pthread_handler_rec *__cleanup_stack; char __opaque[596]; };
# 94 "/usr/include/sys/_types.h" 3 4
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;



typedef __uint32_t __darwin_ino_t;

typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef struct _opaque_pthread_attr_t
   __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t
   __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t
   __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t
   __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t
   __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t
   __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t
   __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t
   __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t
   *__darwin_pthread_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
# 28 "/usr/include/_types.h" 2 3 4

typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;



typedef unsigned long __darwin_wctype_t;
# 64 "/usr/include/stdlib.h" 2 3 4

# 1 "/usr/include/sys/wait.h" 1 3 4
# 79 "/usr/include/sys/wait.h" 3 4
typedef enum {
 P_ALL,
 P_PID,
 P_PGID
} idtype_t;






typedef __darwin_pid_t pid_t;




typedef __darwin_id_t id_t;
# 116 "/usr/include/sys/wait.h" 3 4
# 1 "/usr/include/sys/signal.h" 1 3 4
# 73 "/usr/include/sys/signal.h" 3 4
# 1 "/usr/include/sys/appleapiopts.h" 1 3 4
# 74 "/usr/include/sys/signal.h" 2 3 4







# 1 "/usr/include/machine/signal.h" 1 3 4
# 34 "/usr/include/machine/signal.h" 3 4
# 1 "/usr/include/i386/signal.h" 1 3 4
# 39 "/usr/include/i386/signal.h" 3 4
typedef int sig_atomic_t;
# 55 "/usr/include/i386/signal.h" 3 4
# 1 "/usr/include/i386/_structs.h" 1 3 4
# 56 "/usr/include/i386/signal.h" 2 3 4
# 35 "/usr/include/machine/signal.h" 2 3 4
# 82 "/usr/include/sys/signal.h" 2 3 4
# 154 "/usr/include/sys/signal.h" 3 4
# 1 "/usr/include/sys/_structs.h" 1 3 4
# 57 "/usr/include/sys/_structs.h" 3 4
# 1 "/usr/include/machine/_structs.h" 1 3 4
# 31 "/usr/include/machine/_structs.h" 3 4
# 1 "/usr/include/i386/_structs.h" 1 3 4
# 38 "/usr/include/i386/_structs.h" 3 4
# 1 "/usr/include/mach/i386/_structs.h" 1 3 4
# 43 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_i386_thread_state
{
    unsigned int __eax;
    unsigned int __ebx;
    unsigned int __ecx;
    unsigned int __edx;
    unsigned int __edi;
    unsigned int __esi;
    unsigned int __ebp;
    unsigned int __esp;
    unsigned int __ss;
    unsigned int __eflags;
    unsigned int __eip;
    unsigned int __cs;
    unsigned int __ds;
    unsigned int __es;
    unsigned int __fs;
    unsigned int __gs;
};
# 89 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_fp_control
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
      :2,
    __pc :2,





    __rc :2,






             :1,
      :3;
};
typedef struct __darwin_fp_control __darwin_fp_control_t;
# 147 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_fp_status
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
    __stkflt :1,
    __errsumm :1,
    __c0 :1,
    __c1 :1,
    __c2 :1,
    __tos :3,
    __c3 :1,
    __busy :1;
};
typedef struct __darwin_fp_status __darwin_fp_status_t;
# 191 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_mmst_reg
{
 char __mmst_reg[10];
 char __mmst_rsrv[6];
};
# 210 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_xmm_reg
{
 char __xmm_reg[16];
};
# 232 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_i386_float_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
};
# 308 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_i386_exception_state
{
    unsigned int __trapno;
    unsigned int __err;
    unsigned int __faultvaddr;
};
# 326 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_debug_state32
{
 unsigned int __dr0;
 unsigned int __dr1;
 unsigned int __dr2;
 unsigned int __dr3;
 unsigned int __dr4;
 unsigned int __dr5;
 unsigned int __dr6;
 unsigned int __dr7;
};
# 358 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_thread_state64
{
 __uint64_t __rax;
 __uint64_t __rbx;
 __uint64_t __rcx;
 __uint64_t __rdx;
 __uint64_t __rdi;
 __uint64_t __rsi;
 __uint64_t __rbp;
 __uint64_t __rsp;
 __uint64_t __r8;
 __uint64_t __r9;
 __uint64_t __r10;
 __uint64_t __r11;
 __uint64_t __r12;
 __uint64_t __r13;
 __uint64_t __r14;
 __uint64_t __r15;
 __uint64_t __rip;
 __uint64_t __rflags;
 __uint64_t __cs;
 __uint64_t __fs;
 __uint64_t __gs;
};
# 413 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_float_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;


 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;

 __uint16_t __fpu_rsrv2;


 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;

 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
};
# 517 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_exception_state64
{
    unsigned int __trapno;
    unsigned int __err;
    __uint64_t __faultvaddr;
};
# 535 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_debug_state64
{
 __uint64_t __dr0;
 __uint64_t __dr1;
 __uint64_t __dr2;
 __uint64_t __dr3;
 __uint64_t __dr4;
 __uint64_t __dr5;
 __uint64_t __dr6;
 __uint64_t __dr7;
};
# 39 "/usr/include/i386/_structs.h" 2 3 4
# 48 "/usr/include/i386/_structs.h" 3 4
struct __darwin_mcontext32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_float_state __fs;
};
# 68 "/usr/include/i386/_structs.h" 3 4
struct __darwin_mcontext64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_float_state64 __fs;
};
# 94 "/usr/include/i386/_structs.h" 3 4
typedef struct __darwin_mcontext32 *mcontext_t;
# 32 "/usr/include/machine/_structs.h" 2 3 4
# 58 "/usr/include/sys/_structs.h" 2 3 4
# 75 "/usr/include/sys/_structs.h" 3 4
struct __darwin_sigaltstack
{
 void *ss_sp;
 __darwin_size_t ss_size;
 int ss_flags;
};
# 128 "/usr/include/sys/_structs.h" 3 4
struct __darwin_ucontext
{
 int uc_onstack;
 __darwin_sigset_t uc_sigmask;
 struct __darwin_sigaltstack uc_stack;
 struct __darwin_ucontext *uc_link;
 __darwin_size_t uc_mcsize;
 struct __darwin_mcontext32 *uc_mcontext;



};
# 218 "/usr/include/sys/_structs.h" 3 4
typedef struct __darwin_sigaltstack stack_t;
# 227 "/usr/include/sys/_structs.h" 3 4
typedef struct __darwin_ucontext ucontext_t;
# 155 "/usr/include/sys/signal.h" 2 3 4
# 163 "/usr/include/sys/signal.h" 3 4
typedef __darwin_pthread_attr_t pthread_attr_t;




typedef __darwin_sigset_t sigset_t;




typedef __darwin_size_t size_t;




typedef __darwin_uid_t uid_t;


union sigval {

 int sival_int;
 void *sival_ptr;
};





struct sigevent {
 int sigev_notify;
 int sigev_signo;
 union sigval sigev_value;
 void (*sigev_notify_function)(union sigval);
 pthread_attr_t *sigev_notify_attributes;
};


typedef struct __siginfo {
 int si_signo;
 int si_errno;
 int si_code;
 pid_t si_pid;
 uid_t si_uid;
 int si_status;
 void *si_addr;
 union sigval si_value;
 long si_band;
 unsigned long __pad[7];
} siginfo_t;
# 292 "/usr/include/sys/signal.h" 3 4
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
         void *);
};


struct __sigaction {
 union __sigaction_u __sigaction_u;
 void (*sa_tramp)(void *, int, int, siginfo_t *, void *);
 sigset_t sa_mask;
 int sa_flags;
};




struct sigaction {
 union __sigaction_u __sigaction_u;
 sigset_t sa_mask;
 int sa_flags;
};
# 354 "/usr/include/sys/signal.h" 3 4
typedef void (*sig_t)(int);
# 371 "/usr/include/sys/signal.h" 3 4
struct sigvec {
 void (*sv_handler)(int);
 int sv_mask;
 int sv_flags;
};
# 390 "/usr/include/sys/signal.h" 3 4
struct sigstack {
 char *ss_sp;
 int ss_onstack;
};
# 412 "/usr/include/sys/signal.h" 3 4

void (*signal(int, void (*)(int)))(int);

# 117 "/usr/include/sys/wait.h" 2 3 4
# 1 "/usr/include/sys/resource.h" 1 3 4
# 76 "/usr/include/sys/resource.h" 3 4
# 1 "/usr/include/sys/_structs.h" 1 3 4
# 100 "/usr/include/sys/_structs.h" 3 4
struct timeval
{
 __darwin_time_t tv_sec;
 __darwin_suseconds_t tv_usec;
};
# 77 "/usr/include/sys/resource.h" 2 3 4
# 88 "/usr/include/sys/resource.h" 3 4
typedef __uint64_t rlim_t;
# 142 "/usr/include/sys/resource.h" 3 4
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
# 153 "/usr/include/sys/resource.h" 3 4
 long ru_maxrss;

 long ru_ixrss;
 long ru_idrss;
 long ru_isrss;
 long ru_minflt;
 long ru_majflt;
 long ru_nswap;
 long ru_inblock;
 long ru_oublock;
 long ru_msgsnd;
 long ru_msgrcv;
 long ru_nsignals;
 long ru_nvcsw;
 long ru_nivcsw;


};
# 213 "/usr/include/sys/resource.h" 3 4
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
# 235 "/usr/include/sys/resource.h" 3 4

int getpriority(int, id_t);

int getiopolicy_np(int, int);

int getrlimit(int, struct rlimit *) __asm("_" "getrlimit" "$UNIX2003");
int getrusage(int, struct rusage *);
int setpriority(int, id_t, int);

int setiopolicy_np(int, int, int);

int setrlimit(int, const struct rlimit *) __asm("_" "setrlimit" "$UNIX2003");

# 118 "/usr/include/sys/wait.h" 2 3 4
# 193 "/usr/include/sys/wait.h" 3 4
# 1 "/usr/include/machine/endian.h" 1 3 4
# 37 "/usr/include/machine/endian.h" 3 4
# 1 "/usr/include/i386/endian.h" 1 3 4
# 99 "/usr/include/i386/endian.h" 3 4
# 1 "/usr/include/sys/_endian.h" 1 3 4
# 124 "/usr/include/sys/_endian.h" 3 4
# 1 "/usr/include/libkern/_OSByteOrder.h" 1 3 4
# 66 "/usr/include/libkern/_OSByteOrder.h" 3 4
# 1 "/usr/include/libkern/i386/_OSByteOrder.h" 1 3 4
# 44 "/usr/include/libkern/i386/_OSByteOrder.h" 3 4
static __inline__
__uint16_t
_OSSwapInt16(
    __uint16_t _data
)
{
    return ((_data << 8) | (_data >> 8));
}

static __inline__
__uint32_t
_OSSwapInt32(
    __uint32_t _data
)
{
    __asm__ ("bswap   %0" : "+r" (_data));
    return _data;
}


static __inline__
__uint64_t
_OSSwapInt64(
    __uint64_t _data
)
{
    __asm__ ("bswap   %%eax\n\t"
             "bswap   %%edx\n\t"
             "xchgl   %%eax, %%edx"
             : "+A" (_data));
    return _data;
}
# 67 "/usr/include/libkern/_OSByteOrder.h" 2 3 4
# 125 "/usr/include/sys/_endian.h" 2 3 4
# 100 "/usr/include/i386/endian.h" 2 3 4
# 38 "/usr/include/machine/endian.h" 2 3 4
# 194 "/usr/include/sys/wait.h" 2 3 4







union wait {
 int w_status;



 struct {

  unsigned int w_Termsig:7,
    w_Coredump:1,
    w_Retcode:8,
    w_Filler:16;







 } w_T;





 struct {

  unsigned int w_Stopval:8,
    w_Stopsig:8,
    w_Filler:16;






 } w_S;
};
# 254 "/usr/include/sys/wait.h" 3 4

pid_t wait(int *) __asm("_" "wait" "$UNIX2003");
pid_t waitpid(pid_t, int *, int) __asm("_" "waitpid" "$UNIX2003");

int waitid(idtype_t, id_t, siginfo_t *, int) __asm("_" "waitid" "$UNIX2003");


pid_t wait3(int *, int, struct rusage *);
pid_t wait4(pid_t, int *, int, struct rusage *);


# 66 "/usr/include/stdlib.h" 2 3 4

# 1 "/usr/include/alloca.h" 1 3 4
# 35 "/usr/include/alloca.h" 3 4

void *alloca(size_t);

# 68 "/usr/include/stdlib.h" 2 3 4
# 81 "/usr/include/stdlib.h" 3 4
typedef __darwin_ct_rune_t ct_rune_t;




typedef __darwin_rune_t rune_t;






typedef __darwin_wchar_t wchar_t;



typedef struct {
 int quot;
 int rem;
} div_t;

typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef struct {
 long long quot;
 long long rem;
} lldiv_t;
# 134 "/usr/include/stdlib.h" 3 4
extern int __mb_cur_max;
# 144 "/usr/include/stdlib.h" 3 4

void abort(void) __attribute__((__noreturn__));
int abs(int) __attribute__((__const__));
int atexit(void (*)(void));
double atof(const char *);
int atoi(const char *);
long atol(const char *);

long long
  atoll(const char *);

void *bsearch(const void *, const void *, size_t,
     size_t, int (*)(const void *, const void *));
void *calloc(size_t, size_t);
div_t div(int, int) __attribute__((__const__));
void exit(int) __attribute__((__noreturn__));
void free(void *);
char *getenv(const char *);
long labs(long) __attribute__((__const__));
ldiv_t ldiv(long, long) __attribute__((__const__));

long long
  llabs(long long);
lldiv_t lldiv(long long, long long);

void *malloc(size_t);
int mblen(const char *, size_t);
size_t mbstowcs(wchar_t * , const char * , size_t);
int mbtowc(wchar_t * , const char * , size_t);
void qsort(void *, size_t, size_t,
     int (*)(const void *, const void *));
int rand(void);
void *realloc(void *, size_t);
void srand(unsigned);
double strtod(const char *, char **) __asm("_" "strtod" "$UNIX2003");
float strtof(const char *, char **) __asm("_" "strtof" "$UNIX2003");
long strtol(const char *, char **, int);
long double
  strtold(const char *, char **) ;

long long
  strtoll(const char *, char **, int);

unsigned long
  strtoul(const char *, char **, int);

unsigned long long
  strtoull(const char *, char **, int);

int system(const char *) __asm("_" "system" "$UNIX2003");
size_t wcstombs(char * , const wchar_t * , size_t);
int wctomb(char *, wchar_t);


void _Exit(int) __attribute__((__noreturn__));
long a64l(const char *);
double drand48(void);
char *ecvt(double, int, int *, int *);
double erand48(unsigned short[3]);
char *fcvt(double, int, int *, int *);
char *gcvt(double, int, char *);
int getsubopt(char **, char * const *, char **);
int grantpt(int);

char *initstate(unsigned, char *, size_t);



long jrand48(unsigned short[3]);
char *l64a(long);
void lcong48(unsigned short[7]);
long lrand48(void);
char *mktemp(char *);
int mkstemp(char *);
long mrand48(void);
long nrand48(unsigned short[3]);
int posix_openpt(int);
char *ptsname(int);
int putenv(char *) __asm("_" "putenv" "$UNIX2003");
long random(void);
int rand_r(unsigned *);

char *realpath(const char * , char * ) __asm("_" "realpath" "$DARWIN_EXTSN");



unsigned short
 *seed48(unsigned short[3]);
int setenv(const char *, const char *, int) __asm("_" "setenv" "$UNIX2003");

void setkey(const char *) __asm("_" "setkey" "$UNIX2003");



char *setstate(const char *);
void srand48(long);

void srandom(unsigned);



int unlockpt(int);

int unsetenv(const char *) __asm("_" "unsetenv" "$UNIX2003");






# 1 "/usr/include/machine/types.h" 1 3 4
# 37 "/usr/include/machine/types.h" 3 4
# 1 "/usr/include/i386/types.h" 1 3 4
# 78 "/usr/include/i386/types.h" 3 4
typedef signed char int8_t;

typedef unsigned char u_int8_t;


typedef short int16_t;

typedef unsigned short u_int16_t;


typedef int int32_t;

typedef unsigned int u_int32_t;


typedef long long int64_t;

typedef unsigned long long u_int64_t;




typedef int32_t register_t;




typedef __darwin_intptr_t intptr_t;



typedef unsigned long int uintptr_t;




typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;





typedef u_int64_t syscall_arg_t;
# 38 "/usr/include/machine/types.h" 2 3 4
# 255 "/usr/include/stdlib.h" 2 3 4


typedef __darwin_dev_t dev_t;




typedef __darwin_mode_t mode_t;



u_int32_t
  arc4random(void);
void arc4random_addrandom(unsigned char *dat, int datlen);
void arc4random_stir(void);


char *cgetcap(char *, const char *, int);
int cgetclose(void);
int cgetent(char **, char **, const char *);
int cgetfirst(char **, char **);
int cgetmatch(const char *, const char *);
int cgetnext(char **, char **);
int cgetnum(char *, const char *, long *);
int cgetset(const char *);
int cgetstr(char *, const char *, char **);
int cgetustr(char *, const char *, char **);

int daemon(int, int) __asm("_" "daemon" "$1050") __attribute__((deprecated));
char *devname(dev_t, mode_t);
char *devname_r(dev_t, mode_t, char *buf, int len);
char *getbsize(int *, long *);
int getloadavg(double [], int);
const char
 *getprogname(void);

int heapsort(void *, size_t, size_t,
     int (*)(const void *, const void *));
int mergesort(void *, size_t, size_t,
     int (*)(const void *, const void *));
void qsort_r(void *, size_t, size_t, void *,
     int (*)(void *, const void *, const void *));
int radixsort(const unsigned char **, int, const unsigned char *,
     unsigned);
void setprogname(const char *);
int sradixsort(const unsigned char **, int, const unsigned char *,
     unsigned);
void sranddev(void);
void srandomdev(void);
void *reallocf(void *, size_t);

long long
  strtoq(const char *, char **, int);
unsigned long long
  strtouq(const char *, char **, int);

extern char *suboptarg;
void *valloc(size_t);







# 32 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h" 2



# 1 "/usr/include/string.h" 1 3 4
# 70 "/usr/include/string.h" 3 4
typedef __darwin_ssize_t ssize_t;
# 80 "/usr/include/string.h" 3 4

void *memchr(const void *, int, size_t);
int memcmp(const void *, const void *, size_t);
void *memcpy(void *, const void *, size_t);
void *memmove(void *, const void *, size_t);
void *memset(void *, int, size_t);

char *stpcpy(char *, const char *);
char *strcasestr(const char *, const char *);

char *strcat(char *, const char *);
char *strchr(const char *, int);
int strcmp(const char *, const char *);
int strcoll(const char *, const char *);
char *strcpy(char *, const char *);
size_t strcspn(const char *, const char *);
char *strerror(int) __asm("_" "strerror" "$UNIX2003");
int strerror_r(int, char *, size_t);
size_t strlen(const char *);
char *strncat(char *, const char *, size_t);
int strncmp(const char *, const char *, size_t);
char *strncpy(char *, const char *, size_t);

char *strnstr(const char *, const char *, size_t);

char *strpbrk(const char *, const char *);
char *strrchr(const char *, int);
size_t strspn(const char *, const char *);
char *strstr(const char *, const char *);
char *strtok(char *, const char *);
size_t strxfrm(char *, const char *, size_t);



void *memccpy(void *, const void *, int, size_t);
char *strtok_r(char *, const char *, char **);
char *strdup(const char *);

int bcmp(const void *, const void *, size_t);
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);
int ffs(int);
int ffsl(long);
int fls(int);
int flsl(long);
char *index(const char *, int);
void memset_pattern4(void *, const void *, size_t);
void memset_pattern8(void *, const void *, size_t);
void memset_pattern16(void *, const void *, size_t);
char *rindex(const char *, int);
int strcasecmp(const char *, const char *);
size_t strlcat(char *, const char *, size_t);
size_t strlcpy(char *, const char *, size_t);
void strmode(int, char *);
int strncasecmp(const char *, const char *, size_t);
char *strsep(char **, const char *);
char *strsignal(int sig);
void swab(const void * , void * , ssize_t);



# 36 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h" 2
# 44 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
# 1 "/usr/lib/gcc/i686-apple-darwin9/4.0.1/include/stddef.h" 1 3 4
# 152 "/usr/lib/gcc/i686-apple-darwin9/4.0.1/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 45 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 70 "/usr/include/stdio.h" 3 4
typedef __darwin_va_list va_list;




typedef __darwin_off_t off_t;
# 87 "/usr/include/stdio.h" 3 4
typedef __darwin_off_t fpos_t;
# 98 "/usr/include/stdio.h" 3 4
struct __sbuf {
 unsigned char *_base;
 int _size;
};


struct __sFILEX;
# 132 "/usr/include/stdio.h" 3 4
typedef struct __sFILE {
 unsigned char *_p;
 int _r;
 int _w;
 short _flags;
 short _file;
 struct __sbuf _bf;
 int _lbfsize;


 void *_cookie;
 int (*_close)(void *);
 int (*_read) (void *, char *, int);
 fpos_t (*_seek) (void *, fpos_t, int);
 int (*_write)(void *, const char *, int);


 struct __sbuf _ub;
 struct __sFILEX *_extra;
 int _ur;


 unsigned char _ubuf[3];
 unsigned char _nbuf[1];


 struct __sbuf _lb;


 int _blksize;
 fpos_t _offset;
} FILE;



extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;




# 248 "/usr/include/stdio.h" 3 4

void clearerr(FILE *);
int fclose(FILE *);
int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
int fgetc(FILE *);
int fgetpos(FILE * , fpos_t *);
char *fgets(char * , int, FILE *);
FILE *fopen(const char * , const char * );
int fprintf(FILE * , const char * , ...) ;
int fputc(int, FILE *);
int fputs(const char * , FILE * ) __asm("_" "fputs" "$UNIX2003");
size_t fread(void * , size_t, size_t, FILE * );
FILE *freopen(const char * , const char * ,
     FILE * ) __asm("_" "freopen" "$UNIX2003");
int fscanf(FILE * , const char * , ...) ;
int fseek(FILE *, long, int);
int fsetpos(FILE *, const fpos_t *);
long ftell(FILE *);
size_t fwrite(const void * , size_t, size_t, FILE * ) __asm("_" "fwrite" "$UNIX2003");
int getc(FILE *);
int getchar(void);
char *gets(char *);

extern const int sys_nerr;
extern const char *const sys_errlist[];

void perror(const char *);
int printf(const char * , ...) ;
int putc(int, FILE *);
int putchar(int);
int puts(const char *);
int remove(const char *);
int rename (const char *, const char *);
void rewind(FILE *);
int scanf(const char * , ...) ;
void setbuf(FILE * , char * );
int setvbuf(FILE * , char * , int, size_t);
int sprintf(char * , const char * , ...) ;
int sscanf(const char * , const char * , ...) ;
FILE *tmpfile(void);
char *tmpnam(char *);
int ungetc(int, FILE *);
int vfprintf(FILE * , const char * , va_list) ;
int vprintf(const char * , va_list) ;
int vsprintf(char * , const char * , va_list) ;

int asprintf(char **, const char *, ...) ;
int vasprintf(char **, const char *, va_list) ;










char *ctermid(char *);

char *ctermid_r(char *);

FILE *fdopen(int, const char *);

char *fgetln(FILE *, size_t *);

int fileno(FILE *);
void flockfile(FILE *);

const char
 *fmtcheck(const char *, const char *);
int fpurge(FILE *);

int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);

int getw(FILE *);

int pclose(FILE *);
FILE *popen(const char *, const char *);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);

int putw(int, FILE *);
void setbuffer(FILE *, char *, int);
int setlinebuf(FILE *);

int snprintf(char * , size_t, const char * , ...) ;
char *tempnam(const char *, const char *) __asm("_" "tempnam" "$UNIX2003");
int vfscanf(FILE * , const char * , va_list) ;
int vscanf(const char * , va_list) ;
int vsnprintf(char * , size_t, const char * , va_list) ;
int vsscanf(const char * , const char * , va_list) ;

FILE *zopen(const char *, const char *, int);








FILE *funopen(const void *,
  int (*)(void *, char *, int),
  int (*)(void *, const char *, int),
  fpos_t (*)(void *, fpos_t, int),
  int (*)(void *));

# 371 "/usr/include/stdio.h" 3 4

int __srget(FILE *);
int __svfscanf(FILE *, const char *, va_list) ;
int __swbuf(int, FILE *);








static __inline int __sputc(int _c, FILE *_p) {
 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf(_c, _p));
}
# 46 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h" 2
# 82 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
typedef unsigned long VALUE;
typedef unsigned long ID;



# 1 "/usr/lib/gcc/i686-apple-darwin9/4.0.1/include/limits.h" 1 3 4






# 1 "/usr/lib/gcc/i686-apple-darwin9/4.0.1/include/syslimits.h" 1 3 4
# 8 "/usr/lib/gcc/i686-apple-darwin9/4.0.1/include/limits.h" 2 3 4


# 1 "/usr/include/limits.h" 1 3 4
# 64 "/usr/include/limits.h" 3 4
# 1 "/usr/include/machine/limits.h" 1 3 4







# 1 "/usr/include/i386/limits.h" 1 3 4
# 40 "/usr/include/i386/limits.h" 3 4
# 1 "/usr/include/i386/_limits.h" 1 3 4
# 41 "/usr/include/i386/limits.h" 2 3 4
# 9 "/usr/include/machine/limits.h" 2 3 4
# 65 "/usr/include/limits.h" 2 3 4
# 1 "/usr/include/sys/syslimits.h" 1 3 4
# 66 "/usr/include/limits.h" 2 3 4
# 11 "/usr/lib/gcc/i686-apple-darwin9/4.0.1/include/limits.h" 2 3 4
# 88 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h" 2
# 138 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
VALUE rb_int2inum (long);



VALUE rb_uint2inum (unsigned long);





VALUE rb_ll2inum (long long);

VALUE rb_ull2inum (unsigned long long);
# 221 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
void rb_check_type (VALUE,int);


VALUE rb_str_to_str (VALUE);
VALUE rb_string_value (volatile VALUE*);
char *rb_string_value_ptr (volatile VALUE*);
char *rb_string_value_cstr (volatile VALUE*);





void rb_check_safe_obj (VALUE);
void rb_check_safe_str (VALUE);







void rb_secure (int);
extern int ruby_safe_level;

void rb_set_safe_level (int);
void rb_secure_update (VALUE);

long rb_num2long (VALUE);
unsigned long rb_num2ulong (VALUE);
# 269 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
long long rb_num2ll (VALUE);
unsigned long long rb_num2ull (VALUE);
# 281 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
double rb_num2dbl (VALUE);



char *rb_str2cstr (VALUE,long*);







VALUE rb_newobj (void);
# 310 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
struct RBasic {
    unsigned long flags;
    VALUE klass;
};

struct RObject {
    struct RBasic basic;
    struct st_table *iv_tbl;
};

struct RClass {
    struct RBasic basic;
    struct st_table *iv_tbl;
    struct st_table *m_tbl;
    VALUE super;
};

struct RFloat {
    struct RBasic basic;
    double value;
};



struct RString {
    struct RBasic basic;
    long len;
    char *ptr;
    union {
 long capa;
 VALUE shared;
    } aux;
};

struct RArray {
    struct RBasic basic;
    long len;
    union {
 long capa;
 VALUE shared;
    } aux;
    VALUE *ptr;
};

struct RRegexp {
    struct RBasic basic;
    struct re_pattern_buffer *ptr;
    long len;
    char *str;
};

struct RHash {
    struct RBasic basic;
    struct st_table *tbl;
    int iter_lev;
    VALUE ifnone;
};

struct RFile {
    struct RBasic basic;
    struct OpenFile *fptr;
};

struct RData {
    struct RBasic basic;
    void (*dmark) (void*);
    void (*dfree) (void*);
    void *data;
};






typedef void (*RUBY_DATA_FUNC) (void*);

VALUE rb_data_object_alloc (VALUE,void*,RUBY_DATA_FUNC,RUBY_DATA_FUNC);
# 403 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
struct RStruct {
    struct RBasic basic;
    long len;
    VALUE *ptr;
};



struct RBignum {
    struct RBasic basic;
    char sign;
    long len;
    void *digits;
};
# 479 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
void rb_obj_infect (VALUE,VALUE);

void rb_glob (const char*,void(*)(const char*,VALUE),VALUE);
void rb_globi (const char*,void(*)(const char*,VALUE),VALUE);

VALUE rb_define_class (const char*,VALUE);
VALUE rb_define_module (const char*);
VALUE rb_define_class_under (VALUE, const char*, VALUE);
VALUE rb_define_module_under (VALUE, const char*);

void rb_include_module (VALUE,VALUE);
void rb_extend_object (VALUE,VALUE);

void rb_define_variable (const char*,VALUE*);
void rb_define_virtual_variable (const char*,VALUE(*)(),void(*)());
void rb_define_hooked_variable (const char*,VALUE*,VALUE(*)(),void(*)());
int ruby_glob (const char*,int,int(*)(const char*,VALUE),VALUE);
int ruby_globi (const char*,int,int(*)(const char*,VALUE),VALUE);
void rb_define_readonly_variable (const char*,VALUE*);
void rb_define_const (VALUE,const char*,VALUE);
void rb_define_global_const (const char*,VALUE);


void rb_define_method (VALUE,const char*,VALUE(*)(),int);
void rb_define_module_function (VALUE,const char*,VALUE(*)(),int);
void rb_define_global_function (const char*,VALUE(*)(),int);

void rb_undef_method (VALUE,const char*);
void rb_define_alias (VALUE,const char*,const char*);
void rb_define_attr (VALUE,const char*,int,int);

void rb_global_variable (VALUE*);
void rb_gc_register_address (VALUE*);
void rb_gc_unregister_address (VALUE*);

ID rb_intern (const char*);
char *rb_id2name (ID);
ID rb_to_id (VALUE);

char *rb_class2name (VALUE);
char *rb_obj_classname (VALUE);

void rb_p (VALUE);

VALUE rb_eval_string (const char*);
VALUE rb_eval_string_protect (const char*, int*);
VALUE rb_eval_string_wrap (const char*, int*);
VALUE rb_funcall (VALUE, ID, int, ...);
VALUE rb_funcall2 (VALUE, ID, int, const VALUE*);
VALUE rb_funcall3 (VALUE, ID, int, const VALUE*);
int rb_scan_args (int, const VALUE*, const char*, ...);
VALUE rb_call_super (int, const VALUE*);

VALUE rb_gv_set (const char*, VALUE);
VALUE rb_gv_get (const char*);
VALUE rb_iv_get (VALUE, const char*);
VALUE rb_iv_set (VALUE, const char*, VALUE);

VALUE rb_equal (VALUE,VALUE);

extern VALUE ruby_verbose, ruby_debug;

void rb_raise (VALUE, const char*, ...) __attribute__ ((noreturn));
void rb_fatal (const char*, ...) __attribute__ ((noreturn));
void rb_bug (const char*, ...) __attribute__ ((noreturn));
void rb_sys_fail (const char*) __attribute__ ((noreturn));
void rb_iter_break (void) __attribute__ ((noreturn));
void rb_exit (int) __attribute__ ((noreturn));
void rb_notimplement (void) __attribute__ ((noreturn));

void rb_warning (const char*, ...);
void rb_sys_warning (const char*, ...);
void rb_warn (const char*, ...);

VALUE rb_each (VALUE);
VALUE rb_yield (VALUE);
VALUE rb_yield_values (int n, ...);
VALUE rb_yield_splat (VALUE);
int rb_block_given_p (void);
void rb_need_block (void);
VALUE rb_iterate (VALUE(*)(VALUE),VALUE,VALUE(*)(),VALUE);
VALUE rb_rescue (VALUE(*)(),VALUE,VALUE(*)(),VALUE);
VALUE rb_rescue2 (VALUE(*)(),VALUE,VALUE(*)(),VALUE,...);
VALUE rb_ensure (VALUE(*)(),VALUE,VALUE(*)(),VALUE);
VALUE rb_catch (const char*,VALUE(*)(),VALUE);
void rb_throw (const char*,VALUE) __attribute__ ((noreturn));

VALUE rb_require (const char*);

void ruby_init (void);
void ruby_options (int, char**);
void ruby_run (void) __attribute__ ((noreturn));

extern VALUE rb_mKernel;
extern VALUE rb_mComparable;
extern VALUE rb_mEnumerable;
extern VALUE rb_mPrecision;
extern VALUE rb_mErrno;
extern VALUE rb_mFileTest;
extern VALUE rb_mGC;
extern VALUE rb_mMath;
extern VALUE rb_mProcess;

extern VALUE rb_cObject;
extern VALUE rb_cArray;
extern VALUE rb_cBignum;
extern VALUE rb_cBinding;
extern VALUE rb_cClass;
extern VALUE rb_cCont;
extern VALUE rb_cDir;
extern VALUE rb_cData;
extern VALUE rb_cFalseClass;
extern VALUE rb_cFile;
extern VALUE rb_cFixnum;
extern VALUE rb_cFloat;
extern VALUE rb_cHash;
extern VALUE rb_cInteger;
extern VALUE rb_cIO;
extern VALUE rb_cMatch;
extern VALUE rb_cMethod;
extern VALUE rb_cModule;
extern VALUE rb_cNameErrorMesg;
extern VALUE rb_cNilClass;
extern VALUE rb_cNumeric;
extern VALUE rb_cProc;
extern VALUE rb_cRange;
extern VALUE rb_cRegexp;
extern VALUE rb_cStat;
extern VALUE rb_cString;
extern VALUE rb_cStruct;
extern VALUE rb_cSymbol;
extern VALUE rb_cThread;
extern VALUE rb_cTime;
extern VALUE rb_cTrueClass;
extern VALUE rb_cUnboundMethod;

extern VALUE rb_eException;
extern VALUE rb_eStandardError;
extern VALUE rb_eSystemExit;
extern VALUE rb_eInterrupt;
extern VALUE rb_eSignal;
extern VALUE rb_eFatal;
extern VALUE rb_eArgError;
extern VALUE rb_eEOFError;
extern VALUE rb_eIndexError;
extern VALUE rb_eRangeError;
extern VALUE rb_eIOError;
extern VALUE rb_eRuntimeError;
extern VALUE rb_eSecurityError;
extern VALUE rb_eSystemCallError;
extern VALUE rb_eTypeError;
extern VALUE rb_eZeroDivError;
extern VALUE rb_eNotImpError;
extern VALUE rb_eNoMemError;
extern VALUE rb_eNoMethodError;
extern VALUE rb_eFloatDomainError;
extern VALUE rb_eLocalJumpError;
extern VALUE rb_eSysStackError;
extern VALUE rb_eRegexpError;

extern VALUE rb_eScriptError;
extern VALUE rb_eNameError;
extern VALUE rb_eSyntaxError;
extern VALUE rb_eLoadError;

extern VALUE rb_stdin, rb_stdout, rb_stderr;
extern VALUE ruby_errinfo;

static inline VALUE

rb_class_of(VALUE obj)




{
    if ((((long)(obj))&0x01)) return rb_cFixnum;
    if (obj == ((VALUE)4)) return rb_cNilClass;
    if (obj == ((VALUE)0)) return rb_cFalseClass;
    if (obj == ((VALUE)2)) return rb_cTrueClass;
    if ((((VALUE)(obj)&0xff)==0x0e)) return rb_cSymbol;

    return ((struct RBasic*)(obj))->klass;
}

static inline int

rb_type(VALUE obj)




{
    if ((((long)(obj))&0x01)) return 0x0a;
    if (obj == ((VALUE)4)) return 0x01;
    if (obj == ((VALUE)0)) return 0x21;
    if (obj == ((VALUE)2)) return 0x20;
    if (obj == ((VALUE)6)) return 0x3c;
    if ((((VALUE)(obj)&0xff)==0x0e)) return 0x24;
    return (((struct RBasic*)(obj))->flags & 0x3f);
}

static inline int

rb_special_const_p(VALUE obj)




{
    if ((((VALUE)(obj) & 0x03) || !(((VALUE)(obj) & ~((VALUE)4)) != 0))) return ((VALUE)2);
    return ((VALUE)0);
}

# 1 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/missing.h" 1
# 16 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/missing.h"
# 1 "/usr/include/sys/time.h" 1 3 4
# 77 "/usr/include/sys/time.h" 3 4
# 1 "/usr/include/sys/_structs.h" 1 3 4
# 88 "/usr/include/sys/_structs.h" 3 4
struct timespec
{
 __darwin_time_t tv_sec;
 long tv_nsec;
};
# 183 "/usr/include/sys/_structs.h" 3 4

typedef struct fd_set {
 __int32_t fds_bits[(((1024) + (((sizeof(__int32_t) * 8)) - 1)) / ((sizeof(__int32_t) * 8)))];
} fd_set;



static __inline int
__darwin_fd_isset(int _n, struct fd_set *_p)
{
 return (_p->fds_bits[_n/(sizeof(__int32_t) * 8)] & (1<<(_n % (sizeof(__int32_t) * 8))));
}
# 78 "/usr/include/sys/time.h" 2 3 4



typedef __darwin_time_t time_t;




typedef __darwin_suseconds_t suseconds_t;






struct itimerval {
 struct timeval it_interval;
 struct timeval it_value;
};
# 144 "/usr/include/sys/time.h" 3 4
struct timezone {
 int tz_minuteswest;
 int tz_dsttime;
};
# 187 "/usr/include/sys/time.h" 3 4
struct clockinfo {
 int hz;
 int tick;
 int tickadj;
 int stathz;
 int profhz;
};




# 1 "/usr/include/time.h" 1 3 4
# 69 "/usr/include/time.h" 3 4
# 1 "/usr/include/_structs.h" 1 3 4
# 24 "/usr/include/_structs.h" 3 4
# 1 "/usr/include/sys/_structs.h" 1 3 4
# 25 "/usr/include/_structs.h" 2 3 4
# 70 "/usr/include/time.h" 2 3 4







typedef __darwin_clock_t clock_t;
# 90 "/usr/include/time.h" 3 4
struct tm {
 int tm_sec;
 int tm_min;
 int tm_hour;
 int tm_mday;
 int tm_mon;
 int tm_year;
 int tm_wday;
 int tm_yday;
 int tm_isdst;
 long tm_gmtoff;
 char *tm_zone;
};
# 113 "/usr/include/time.h" 3 4
extern char *tzname[];


extern int getdate_err;

extern long timezone __asm("_" "timezone" "$UNIX2003");

extern int daylight;


char *asctime(const struct tm *);
clock_t clock(void) __asm("_" "clock" "$UNIX2003");
char *ctime(const time_t *);
double difftime(time_t, time_t);
struct tm *getdate(const char *);
struct tm *gmtime(const time_t *);
struct tm *localtime(const time_t *);
time_t mktime(struct tm *) __asm("_" "mktime" "$UNIX2003");
size_t strftime(char * , size_t, const char * , const struct tm * ) __asm("_" "strftime" "$UNIX2003");
char *strptime(const char * , const char * , struct tm * ) __asm("_" "strptime" "$UNIX2003");
time_t time(time_t *);


void tzset(void);



char *asctime_r(const struct tm * , char * );
char *ctime_r(const time_t *, char *);
struct tm *gmtime_r(const time_t * , struct tm * );
struct tm *localtime_r(const time_t * , struct tm * );


time_t posix2time(time_t);



void tzsetwall(void);
time_t time2posix(time_t);
time_t timelocal(struct tm * const);
time_t timegm(struct tm * const);



int nanosleep(const struct timespec *, struct timespec *) __asm("_" "nanosleep" "$UNIX2003");


# 199 "/usr/include/sys/time.h" 2 3 4





int adjtime(const struct timeval *, struct timeval *);
int futimes(int, const struct timeval *);
int lutimes(const char *, const struct timeval *);
int settimeofday(const struct timeval *, const struct timezone *);


int getitimer(int, struct itimerval *);
int gettimeofday(struct timeval * , void * );

# 1 "/usr/include/sys/_select.h" 1 3 4
# 39 "/usr/include/sys/_select.h" 3 4
int select(int, fd_set * , fd_set * ,
  fd_set * , struct timeval * )






  __asm("_" "select" "$UNIX2003")


  ;
# 214 "/usr/include/sys/time.h" 2 3 4

int setitimer(int, const struct itimerval * ,
  struct itimerval * );
int utimes(const char *, const struct timeval *);


# 17 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/missing.h" 2
# 25 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/missing.h"
# 1 "/usr/include/sys/types.h" 1 3 4
# 84 "/usr/include/sys/types.h" 3 4
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;

typedef unsigned long u_long;


typedef unsigned short ushort;
typedef unsigned int uint;


typedef u_int64_t u_quad_t;
typedef int64_t quad_t;
typedef quad_t * qaddr_t;

typedef char * caddr_t;
typedef int32_t daddr_t;






typedef u_int32_t fixpt_t;


typedef __darwin_blkcnt_t blkcnt_t;




typedef __darwin_blksize_t blksize_t;




typedef __darwin_gid_t gid_t;





typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;



typedef __darwin_ino_t ino_t;





typedef __darwin_ino64_t ino64_t;






typedef __int32_t key_t;
# 157 "/usr/include/sys/types.h" 3 4
typedef __uint16_t nlink_t;
# 176 "/usr/include/sys/types.h" 3 4
typedef int32_t segsz_t;
typedef int32_t swblk_t;
# 245 "/usr/include/sys/types.h" 3 4
typedef __darwin_useconds_t useconds_t;
# 260 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/sys/_structs.h" 1 3 4
# 261 "/usr/include/sys/types.h" 2 3 4




typedef __int32_t fd_mask;
# 322 "/usr/include/sys/types.h" 3 4
typedef __darwin_pthread_cond_t pthread_cond_t;



typedef __darwin_pthread_condattr_t pthread_condattr_t;



typedef __darwin_pthread_mutex_t pthread_mutex_t;



typedef __darwin_pthread_mutexattr_t pthread_mutexattr_t;



typedef __darwin_pthread_once_t pthread_once_t;



typedef __darwin_pthread_rwlock_t pthread_rwlock_t;



typedef __darwin_pthread_rwlockattr_t pthread_rwlockattr_t;



typedef __darwin_pthread_t pthread_t;






typedef __darwin_pthread_key_t pthread_key_t;





typedef __darwin_fsblkcnt_t fsblkcnt_t;




typedef __darwin_fsfilcnt_t fsfilcnt_t;
# 26 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/missing.h" 2
# 43 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/missing.h"
extern int eaccess (const char*, int);
# 694 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h" 2
# 1 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/intern.h" 1
# 23 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/intern.h"
void rb_mem_clear (register VALUE*, register long);
VALUE rb_assoc_new (VALUE, VALUE);
VALUE rb_check_array_type (VALUE);
VALUE rb_ary_new (void);
VALUE rb_ary_new2 (long);
VALUE rb_ary_new3 (long,...);
VALUE rb_ary_new4 (long, const VALUE *);
VALUE rb_ary_freeze (VALUE);
VALUE rb_ary_aref (int, VALUE*, VALUE);
void rb_ary_store (VALUE, long, VALUE);
VALUE rb_ary_dup (VALUE);
VALUE rb_ary_to_ary (VALUE);
VALUE rb_ary_to_s (VALUE);
VALUE rb_ary_push (VALUE, VALUE);
VALUE rb_ary_pop (VALUE);
VALUE rb_ary_shift (VALUE);
VALUE rb_ary_unshift (VALUE, VALUE);
VALUE rb_ary_entry (VALUE, long);
VALUE rb_ary_each (VALUE);
VALUE rb_ary_join (VALUE, VALUE);
VALUE rb_ary_print_on (VALUE, VALUE);
VALUE rb_ary_reverse (VALUE);
VALUE rb_ary_sort (VALUE);
VALUE rb_ary_sort_bang (VALUE);
VALUE rb_ary_delete (VALUE, VALUE);
VALUE rb_ary_delete_at (VALUE, long);
VALUE rb_ary_clear (VALUE);
VALUE rb_ary_plus (VALUE, VALUE);
VALUE rb_ary_concat (VALUE, VALUE);
VALUE rb_ary_assoc (VALUE, VALUE);
VALUE rb_ary_rassoc (VALUE, VALUE);
VALUE rb_ary_includes (VALUE, VALUE);
VALUE rb_ary_cmp (VALUE, VALUE);
VALUE rb_protect_inspect (VALUE(*)(),VALUE,VALUE);
VALUE rb_inspecting_p (VALUE);
VALUE rb_check_array_value (VALUE);
VALUE rb_values_at (VALUE, long, int, VALUE*, VALUE(*) (VALUE,long));

VALUE rb_big_clone (VALUE);
void rb_big_2comp (VALUE);
VALUE rb_big_norm (VALUE);
VALUE rb_uint2big (unsigned long);
VALUE rb_int2big (long);
VALUE rb_uint2inum (unsigned long);
VALUE rb_int2inum (long);
VALUE rb_cstr_to_inum (const char*, int, int);
VALUE rb_str_to_inum (VALUE, int, int);
VALUE rb_cstr2inum (const char*, int);
VALUE rb_str2inum (VALUE, int);
VALUE rb_big2str (VALUE, int);
long rb_big2long (VALUE);

unsigned long rb_big2ulong (VALUE);


VALUE rb_ll2inum (long long);
VALUE rb_ull2inum (unsigned long long);
long long rb_big2ll (VALUE);
unsigned long long rb_big2ull (VALUE);

void rb_quad_pack (char*,VALUE);
VALUE rb_quad_unpack (const char*,int);
VALUE rb_dbl2big (double);
double rb_big2dbl (VALUE);
VALUE rb_big_plus (VALUE, VALUE);
VALUE rb_big_minus (VALUE, VALUE);
VALUE rb_big_mul (VALUE, VALUE);
VALUE rb_big_divmod (VALUE, VALUE);
VALUE rb_big_pow (VALUE, VALUE);
VALUE rb_big_and (VALUE, VALUE);
VALUE rb_big_or (VALUE, VALUE);
VALUE rb_big_xor (VALUE, VALUE);
VALUE rb_big_lshift (VALUE, VALUE);
VALUE rb_big_rand (VALUE, double*);

VALUE rb_class_boot (VALUE);
VALUE rb_class_new (VALUE);
VALUE rb_mod_init_copy (VALUE, VALUE);
VALUE rb_class_init_copy (VALUE, VALUE);
VALUE rb_singleton_class_clone (VALUE);
void rb_singleton_class_attached (VALUE,VALUE);
VALUE rb_make_metaclass (VALUE, VALUE);
void rb_check_inheritable (VALUE);
VALUE rb_class_inherited (VALUE, VALUE);
VALUE rb_define_class_id (ID, VALUE);
VALUE rb_module_new (void);
VALUE rb_define_module_id (ID);
VALUE rb_mod_included_modules (VALUE);
VALUE rb_mod_include_p (VALUE, VALUE);
VALUE rb_mod_ancestors (VALUE);
VALUE rb_class_instance_methods (int, VALUE*, VALUE);
VALUE rb_class_public_instance_methods (int, VALUE*, VALUE);
VALUE rb_class_protected_instance_methods (int, VALUE*, VALUE);
VALUE rb_class_private_instance_methods (int, VALUE*, VALUE);
VALUE rb_obj_singleton_methods (int, VALUE*, VALUE);
void rb_define_method_id (VALUE, ID, VALUE (*)(), int);
void rb_frozen_class_p (VALUE);
void rb_undef (VALUE, ID);
void rb_define_protected_method (VALUE, const char*, VALUE (*)(), int);
void rb_define_private_method (VALUE, const char*, VALUE (*)(), int);
void rb_define_singleton_method (VALUE, const char*, VALUE(*)(), int);
VALUE rb_singleton_class (VALUE);

int rb_cmpint (VALUE, VALUE, VALUE);
void rb_cmperr (VALUE, VALUE) __attribute__ ((noreturn));


extern int ruby_nerrs;
VALUE rb_exc_new (VALUE, const char*, long);
VALUE rb_exc_new2 (VALUE, const char*);
VALUE rb_exc_new3 (VALUE, VALUE);
void rb_loaderror (const char*, ...) __attribute__ ((noreturn));
void rb_name_error (ID, const char*, ...) __attribute__ ((noreturn));
void rb_invalid_str (const char*, const char*) __attribute__ ((noreturn));
void rb_compile_error (const char*, ...);
void rb_compile_error_append (const char*, ...);
void rb_load_fail (const char*) __attribute__ ((noreturn));
void rb_error_frozen (const char*) __attribute__ ((noreturn));
void rb_check_frozen (VALUE);

extern struct RNode *ruby_current_node;
void ruby_set_current_source (void);
void rb_exc_raise (VALUE) __attribute__ ((noreturn));
void rb_exc_fatal (VALUE) __attribute__ ((noreturn));
VALUE rb_f_exit (int,VALUE*);
VALUE rb_f_abort (int,VALUE*);
void rb_remove_method (VALUE, const char*);



void rb_define_alloc_func (VALUE, VALUE (*)(VALUE));
void rb_undef_alloc_func (VALUE);
void rb_clear_cache (void);
void rb_clear_cache_by_class (VALUE);
void rb_alias (VALUE, ID, ID);
void rb_attr (VALUE,ID,int,int,int);
int rb_method_boundp (VALUE, ID, int);
VALUE rb_dvar_defined (ID);
VALUE rb_dvar_curr (ID);
VALUE rb_dvar_ref (ID);
void rb_dvar_asgn (ID, VALUE);
void rb_dvar_push (ID, VALUE);
VALUE *rb_svar (int);
VALUE rb_eval_cmd (VALUE, VALUE, int);
int rb_obj_respond_to (VALUE, ID, int);
int rb_respond_to (VALUE, ID);
void rb_interrupt (void);
VALUE rb_apply (VALUE, ID, VALUE);
void rb_backtrace (void);
ID rb_frame_last_func (void);
VALUE rb_obj_instance_eval (int, VALUE*, VALUE);
VALUE rb_mod_module_eval (int, VALUE*, VALUE);
void rb_load (VALUE, int);
void rb_load_protect (VALUE, int, int*);
void rb_jump_tag (int) __attribute__ ((noreturn));
int rb_provided (const char*);
void rb_provide (const char*);
VALUE rb_f_require (VALUE, VALUE);
VALUE rb_require_safe (VALUE, int);
void rb_obj_call_init (VALUE, int, VALUE*);
VALUE rb_class_new_instance (int, VALUE*, VALUE);
VALUE rb_block_proc (void);
VALUE rb_f_lambda (void);
VALUE rb_proc_new (VALUE (*)( ), VALUE);
VALUE rb_protect (VALUE (*)(VALUE), VALUE, int*);
void rb_set_end_proc (void (*)(VALUE), VALUE);
void rb_mark_end_proc (void);
void rb_exec_end_proc (void);
void ruby_finalize (void);
void ruby_stop (int) __attribute__ ((noreturn));
int ruby_cleanup (int);
int ruby_exec (void);
void rb_gc_mark_threads (void);
void rb_thread_start_timer (void);
void rb_thread_stop_timer (void);
void rb_thread_schedule (void);
void rb_thread_wait_fd (int);
int rb_thread_fd_writable (int);
void rb_thread_fd_close (int);
int rb_thread_alone (void);
void rb_thread_polling (void);
void rb_thread_sleep (int);
void rb_thread_sleep_forever (void);
VALUE rb_thread_stop (void);
VALUE rb_thread_wakeup (VALUE);
VALUE rb_thread_run (VALUE);
VALUE rb_thread_kill (VALUE);
VALUE rb_thread_create (VALUE (*)(), void*);
void rb_thread_interrupt (void);
void rb_thread_trap_eval (VALUE, int, int);
void rb_thread_signal_raise (char*);
void rb_thread_signal_exit (void);
int rb_thread_select (int, fd_set *, fd_set *, fd_set *, struct timeval *);
void rb_thread_wait_for (struct timeval);
VALUE rb_thread_current (void);
VALUE rb_thread_main (void);
VALUE rb_thread_local_aref (VALUE, ID);
VALUE rb_thread_local_aset (VALUE, ID, VALUE);
void rb_thread_atfork (void);
VALUE rb_funcall_rescue (VALUE, ID, int, ...);

VALUE rb_file_s_expand_path (int, VALUE *);
VALUE rb_file_expand_path (VALUE, VALUE);
void rb_file_const (const char*, VALUE);
int rb_find_file_ext (VALUE*, const char* const*);
VALUE rb_find_file (VALUE);
char *rb_path_next (const char *);
char *rb_path_skip_prefix (const char *);
char *rb_path_last_separator (const char *);
char *rb_path_end (const char *);

void rb_memerror (void) __attribute__ ((noreturn));
int ruby_stack_check (void);
int ruby_stack_length (VALUE**);
char *rb_source_filename (const char*);
void rb_gc_mark_locations (VALUE*, VALUE*);
void rb_mark_tbl (struct st_table*);
void rb_mark_hash (struct st_table*);
void rb_gc_mark_maybe (VALUE);
void rb_gc_mark (VALUE);
void rb_gc_force_recycle (VALUE);
void rb_gc (void);
void rb_gc_copy_finalizer (VALUE,VALUE);
void rb_gc_finalize_deferred (void);
void rb_gc_call_finalizer_at_exit (void);
VALUE rb_gc_enable (void);
VALUE rb_gc_disable (void);
VALUE rb_gc_start (void);

void st_foreach_safe (struct st_table *, int (*)(), unsigned long);
void rb_hash_foreach (VALUE, int (*)(), VALUE);
VALUE rb_hash (VALUE);
VALUE rb_hash_new (void);
VALUE rb_hash_freeze (VALUE);
VALUE rb_hash_aref (VALUE, VALUE);
VALUE rb_hash_aset (VALUE, VALUE, VALUE);
VALUE rb_hash_delete_if (VALUE);
VALUE rb_hash_delete (VALUE,VALUE);
int rb_path_check (char*);
int rb_env_path_tainted (void);


extern VALUE rb_fs;
extern VALUE rb_output_fs;
extern VALUE rb_rs;
extern VALUE rb_default_rs;
extern VALUE rb_output_rs;
VALUE rb_io_write (VALUE, VALUE);
VALUE rb_io_gets (VALUE);
VALUE rb_io_getc (VALUE);
VALUE rb_io_ungetc (VALUE, VALUE);
VALUE rb_io_close (VALUE);
VALUE rb_io_eof (VALUE);
VALUE rb_io_binmode (VALUE);
VALUE rb_io_addstr (VALUE, VALUE);
VALUE rb_io_printf (int, VALUE*, VALUE);
VALUE rb_io_print (int, VALUE*, VALUE);
VALUE rb_io_puts (int, VALUE*, VALUE);
VALUE rb_file_open (const char*, const char*);
VALUE rb_gets (void);
void rb_write_error (const char*);
void rb_write_error2 (const char*, long);

VALUE rb_marshal_dump (VALUE, VALUE);
VALUE rb_marshal_load (VALUE);

void rb_num_zerodiv (void);
VALUE rb_num_coerce_bin (VALUE, VALUE);
VALUE rb_num_coerce_cmp (VALUE, VALUE);
VALUE rb_num_coerce_relop (VALUE, VALUE);
VALUE rb_float_new (double);
VALUE rb_num2fix (VALUE);
VALUE rb_fix2str (VALUE, int);
VALUE rb_dbl_cmp (double, double);

int rb_eql (VALUE, VALUE);
VALUE rb_any_to_s (VALUE);
VALUE rb_inspect (VALUE);
VALUE rb_obj_is_instance_of (VALUE, VALUE);
VALUE rb_obj_is_kind_of (VALUE, VALUE);
VALUE rb_obj_alloc (VALUE);
VALUE rb_obj_clone (VALUE);
VALUE rb_obj_dup (VALUE);
VALUE rb_obj_init_copy (VALUE,VALUE);
VALUE rb_obj_taint (VALUE);
VALUE rb_obj_tainted (VALUE);
VALUE rb_obj_untaint (VALUE);
VALUE rb_obj_freeze (VALUE);
VALUE rb_obj_id (VALUE);
VALUE rb_obj_class (VALUE);
VALUE rb_class_real (VALUE);
VALUE rb_class_inherited_p (VALUE, VALUE);
VALUE rb_convert_type (VALUE,int,const char*,const char*);
VALUE rb_check_convert_type (VALUE,int,const char*,const char*);
VALUE rb_to_int (VALUE);
VALUE rb_Integer (VALUE);
VALUE rb_Float (VALUE);
VALUE rb_String (VALUE);
VALUE rb_Array (VALUE);
double rb_cstr_to_dbl (const char*, int);
double rb_str_to_dbl (VALUE, int);

extern int ruby_sourceline;
extern char *ruby_sourcefile;
int ruby_yyparse (void);
ID rb_id_attrset (ID);
void rb_parser_append_print (void);
void rb_parser_while_loop (int, int);
int ruby_parser_stack_on_heap (void);
void rb_gc_mark_parser (void);
int rb_is_const_id (ID);
int rb_is_instance_id (ID);
int rb_is_class_id (ID);
int rb_is_local_id (ID);
int rb_is_junk_id (ID);
int rb_symname_p (const char*);
VALUE rb_backref_get (void);
void rb_backref_set (VALUE);
VALUE rb_lastline_get (void);
void rb_lastline_set (VALUE);
VALUE rb_sym_all_symbols (void);

int rb_proc_exec (const char*);
VALUE rb_f_exec (int,VALUE*);
int rb_waitpid (int,int*,int);
void rb_syswait (int);
VALUE rb_proc_times (VALUE);
VALUE rb_detach_process (int);

VALUE rb_range_new (VALUE, VALUE, int);
VALUE rb_range_beg_len (VALUE, long*, long*, long, int);
VALUE rb_length_by_each (VALUE);

int rb_memcmp (const void*,const void*,long);
int rb_memcicmp (const void*,const void*,long);
long rb_memsearch (const void*,long,const void*,long);
VALUE rb_reg_nth_defined (int, VALUE);
VALUE rb_reg_nth_match (int, VALUE);
VALUE rb_reg_last_match (VALUE);
VALUE rb_reg_match_pre (VALUE);
VALUE rb_reg_match_post (VALUE);
VALUE rb_reg_match_last (VALUE);
VALUE rb_reg_new (const char*, long, int);
VALUE rb_reg_match (VALUE, VALUE);
VALUE rb_reg_match2 (VALUE);
int rb_reg_options (VALUE);
void rb_set_kcode (const char*);
const char* rb_get_kcode (void);

extern VALUE rb_argv;
extern VALUE rb_argv0;
void rb_load_file (const char*);
void ruby_script (const char*);
void ruby_prog_init (void);
void ruby_set_argv (int, char**);
void ruby_process_options (int, char**);
void ruby_load_script (void);
void ruby_init_loadpath (void);
void ruby_incpush (const char*);

VALUE rb_f_kill (int, VALUE*);
void rb_gc_mark_trap_list (void);


void ruby_posix_signal (int, void (*)(int));

void rb_trap_exit (void);
void rb_trap_exec (void);
const char *ruby_signal_name (int);

VALUE rb_f_sprintf (int, VALUE*);

VALUE rb_str_new (const char*, long);
VALUE rb_str_new2 (const char*);
VALUE rb_str_new3 (VALUE);
VALUE rb_str_new4 (VALUE);
VALUE rb_str_new5 (VALUE, const char*, long);
VALUE rb_tainted_str_new (const char*, long);
VALUE rb_tainted_str_new2 (const char*);
VALUE rb_str_buf_new (long);
VALUE rb_str_buf_new2 (const char*);
VALUE rb_str_buf_append (VALUE, VALUE);
VALUE rb_str_buf_cat (VALUE, const char*, long);
VALUE rb_str_buf_cat2 (VALUE, const char*);
VALUE rb_obj_as_string (VALUE);
VALUE rb_check_string_type (VALUE);
VALUE rb_str_dup (VALUE);
VALUE rb_str_locktmp (VALUE);
VALUE rb_str_unlocktmp (VALUE);
VALUE rb_str_dup_frozen (VALUE);
VALUE rb_str_plus (VALUE, VALUE);
VALUE rb_str_times (VALUE, VALUE);
VALUE rb_str_substr (VALUE, long, long);
void rb_str_modify (VALUE);
VALUE rb_str_freeze (VALUE);
VALUE rb_str_resize (VALUE, long);
VALUE rb_str_cat (VALUE, const char*, long);
VALUE rb_str_cat2 (VALUE, const char*);
VALUE rb_str_append (VALUE, VALUE);
VALUE rb_str_concat (VALUE, VALUE);
int rb_str_hash (VALUE);
int rb_str_cmp (VALUE, VALUE);
VALUE rb_str_upto (VALUE, VALUE, int);
void rb_str_update (VALUE, long, long, VALUE);
VALUE rb_str_inspect (VALUE);
VALUE rb_str_dump (VALUE);
VALUE rb_str_split (VALUE, const char*);
void rb_str_associate (VALUE, VALUE);
VALUE rb_str_associated (VALUE);
void rb_str_setter (VALUE, ID, VALUE*);
VALUE rb_str_intern (VALUE);

VALUE rb_struct_new (VALUE, ...);
VALUE rb_struct_define (const char*, ...);
VALUE rb_struct_alloc (VALUE, VALUE);
VALUE rb_struct_aref (VALUE, VALUE);
VALUE rb_struct_aset (VALUE, VALUE, VALUE);
VALUE rb_struct_getmember (VALUE, ID);
VALUE rb_struct_iv_get (VALUE, char*);
VALUE rb_struct_s_members (VALUE);
VALUE rb_struct_members (VALUE);

VALUE rb_time_new (time_t, time_t);

VALUE rb_mod_name (VALUE);
VALUE rb_class_path (VALUE);
void rb_set_class_path (VALUE, VALUE, const char*);
VALUE rb_path2class (const char*);
void rb_name_class (VALUE, ID);
VALUE rb_class_name (VALUE);
void rb_autoload (VALUE, ID, const char*);
VALUE rb_autoload_load (VALUE, ID);
VALUE rb_autoload_p (VALUE, ID);
void rb_gc_mark_global_tbl (void);
VALUE rb_f_trace_var (int, VALUE*);
VALUE rb_f_untrace_var (int, VALUE*);
VALUE rb_f_global_variables (void);
void rb_alias_variable (ID, ID);
struct st_table* rb_generic_ivar_table (VALUE);
void rb_copy_generic_ivar (VALUE,VALUE);
void rb_mark_generic_ivar (VALUE);
void rb_mark_generic_ivar_tbl (void);
void rb_free_generic_ivar (VALUE);
VALUE rb_ivar_get (VALUE, ID);
VALUE rb_ivar_set (VALUE, ID, VALUE);
VALUE rb_ivar_defined (VALUE, ID);
VALUE rb_iv_set (VALUE, const char*, VALUE);
VALUE rb_iv_get (VALUE, const char*);
VALUE rb_attr_get (VALUE, ID);
VALUE rb_obj_instance_variables (VALUE);
VALUE rb_obj_remove_instance_variable (VALUE, VALUE);
void *rb_mod_const_at (VALUE, void*);
void *rb_mod_const_of (VALUE, void*);
VALUE rb_const_list (void*);
VALUE rb_mod_constants (VALUE);
VALUE rb_mod_remove_const (VALUE, VALUE);
int rb_const_defined (VALUE, ID);
int rb_const_defined_at (VALUE, ID);
int rb_const_defined_from (VALUE, ID);
VALUE rb_const_get (VALUE, ID);
VALUE rb_const_get_at (VALUE, ID);
VALUE rb_const_get_from (VALUE, ID);
void rb_const_set (VALUE, ID, VALUE);
VALUE rb_mod_constants (VALUE);
VALUE rb_mod_const_missing (VALUE,VALUE);
VALUE rb_cvar_defined (VALUE, ID);

void rb_cvar_set (VALUE, ID, VALUE, int);
VALUE rb_cvar_get (VALUE, ID);
void rb_cv_set (VALUE, const char*, VALUE);
VALUE rb_cv_get (VALUE, const char*);
void rb_define_class_variable (VALUE, const char*, VALUE);
VALUE rb_mod_class_variables (VALUE);
VALUE rb_mod_remove_cvar (VALUE, VALUE);

void ruby_show_version (void);
void ruby_show_copyright (void);
# 695 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h" 2
# 703 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
# 1 "/usr/include/pthread.h" 1 3 4
# 57 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/pthread_impl.h" 1 3 4
# 58 "/usr/include/pthread.h" 2 3 4

# 1 "/usr/include/sched.h" 1 3 4
# 30 "/usr/include/sched.h" 3 4





struct sched_param { int sched_priority; char __opaque[4]; };


extern int sched_yield(void);
extern int sched_get_priority_min(int);
extern int sched_get_priority_max(int);

# 60 "/usr/include/pthread.h" 2 3 4
# 116 "/usr/include/pthread.h" 3 4
typedef __darwin_mach_port_t mach_port_t;
# 148 "/usr/include/pthread.h" 3 4

# 244 "/usr/include/pthread.h" 3 4
int pthread_atfork(void (*)(void), void (*)(void),
                      void (*)(void));
int pthread_attr_destroy(pthread_attr_t *);
int pthread_attr_getdetachstate(const pthread_attr_t *,
          int *);
int pthread_attr_getguardsize(const pthread_attr_t * ,
                                      size_t * );
int pthread_attr_getinheritsched(const pthread_attr_t * ,
           int * );
int pthread_attr_getschedparam(const pthread_attr_t * ,
                                     struct sched_param * );
int pthread_attr_getschedpolicy(const pthread_attr_t * ,
          int * );
int pthread_attr_getscope(const pthread_attr_t * , int * );
int pthread_attr_getstack(const pthread_attr_t * ,
                                      void ** , size_t * );
int pthread_attr_getstackaddr(const pthread_attr_t * ,
                                      void ** );
int pthread_attr_getstacksize(const pthread_attr_t * ,
                                      size_t * );
int pthread_attr_init(pthread_attr_t *);
int pthread_attr_setdetachstate(pthread_attr_t *,
          int );
int pthread_attr_setguardsize(pthread_attr_t *, size_t );
int pthread_attr_setinheritsched(pthread_attr_t *,
           int );
int pthread_attr_setschedparam(pthread_attr_t * ,
                                     const struct sched_param * );
int pthread_attr_setschedpolicy(pthread_attr_t *,
          int );
int pthread_attr_setscope(pthread_attr_t *, int);
int pthread_attr_setstack(pthread_attr_t *,
                                      void *, size_t );
int pthread_attr_setstackaddr(pthread_attr_t *,
                                      void *);
int pthread_attr_setstacksize(pthread_attr_t *, size_t );
int pthread_cancel(pthread_t ) __asm("_" "pthread_cancel" "$UNIX2003");

int pthread_cond_broadcast(pthread_cond_t *);
int pthread_cond_destroy(pthread_cond_t *);
int pthread_cond_init(pthread_cond_t * ,
                            const pthread_condattr_t * ) __asm("_" "pthread_cond_init" "$UNIX2003");
int pthread_cond_signal(pthread_cond_t *);
int pthread_cond_timedwait(pthread_cond_t * ,
     pthread_mutex_t * ,
     const struct timespec * ) __asm("_" "pthread_cond_timedwait" "$UNIX2003");
int pthread_cond_wait(pthread_cond_t * ,
       pthread_mutex_t * ) __asm("_" "pthread_cond_wait" "$UNIX2003");
int pthread_condattr_destroy(pthread_condattr_t *);
int pthread_condattr_init(pthread_condattr_t *);
int pthread_condattr_getpshared(const pthread_condattr_t * ,
   int * );
int pthread_condattr_setpshared(pthread_condattr_t *,
   int );
int pthread_create(pthread_t * ,
                         const pthread_attr_t * ,
                         void *(*)(void *),
                         void * );
int pthread_detach(pthread_t );
int pthread_equal(pthread_t ,
   pthread_t );
void pthread_exit(void *) __attribute__((__noreturn__));
int pthread_getconcurrency(void);
int pthread_getschedparam(pthread_t , int * , struct sched_param * );
void *pthread_getspecific(pthread_key_t );
int pthread_join(pthread_t , void **) __asm("_" "pthread_join" "$UNIX2003");
int pthread_key_create(pthread_key_t *, void (*)(void *));
int pthread_key_delete(pthread_key_t );
int pthread_mutex_destroy(pthread_mutex_t *);
int pthread_mutex_getprioceiling(const pthread_mutex_t * , int * );
int pthread_mutex_init(pthread_mutex_t * , const pthread_mutexattr_t * );
int pthread_mutex_lock(pthread_mutex_t *);
int pthread_mutex_setprioceiling(pthread_mutex_t * , int, int * );
int pthread_mutex_trylock(pthread_mutex_t *);
int pthread_mutex_unlock(pthread_mutex_t *);
int pthread_mutexattr_destroy(pthread_mutexattr_t *) __asm("_" "pthread_mutexattr_destroy" "$UNIX2003");
int pthread_mutexattr_getprioceiling(const pthread_mutexattr_t * , int * );
int pthread_mutexattr_getprotocol(const pthread_mutexattr_t * , int * );
int pthread_mutexattr_getpshared(const pthread_mutexattr_t * , int * );
int pthread_mutexattr_gettype(const pthread_mutexattr_t * , int * );
int pthread_mutexattr_init(pthread_mutexattr_t *);
int pthread_mutexattr_setprioceiling(pthread_mutexattr_t *, int);
int pthread_mutexattr_setprotocol(pthread_mutexattr_t *, int);
int pthread_mutexattr_setpshared(pthread_mutexattr_t *, int );
int pthread_mutexattr_settype(pthread_mutexattr_t *, int);
int pthread_once(pthread_once_t *, void (*)(void));
int pthread_rwlock_destroy(pthread_rwlock_t * ) __asm("_" "pthread_rwlock_destroy" "$UNIX2003");
int pthread_rwlock_init(pthread_rwlock_t * , const pthread_rwlockattr_t * ) __asm("_" "pthread_rwlock_init" "$UNIX2003");
int pthread_rwlock_rdlock(pthread_rwlock_t *) __asm("_" "pthread_rwlock_rdlock" "$UNIX2003");
int pthread_rwlock_tryrdlock(pthread_rwlock_t *) __asm("_" "pthread_rwlock_tryrdlock" "$UNIX2003");
int pthread_rwlock_trywrlock(pthread_rwlock_t *) __asm("_" "pthread_rwlock_trywrlock" "$UNIX2003");
int pthread_rwlock_wrlock(pthread_rwlock_t *) __asm("_" "pthread_rwlock_wrlock" "$UNIX2003");
int pthread_rwlock_unlock(pthread_rwlock_t *) __asm("_" "pthread_rwlock_unlock" "$UNIX2003");
int pthread_rwlockattr_destroy(pthread_rwlockattr_t *);
int pthread_rwlockattr_getpshared(const pthread_rwlockattr_t * ,
   int * );
int pthread_rwlockattr_init(pthread_rwlockattr_t *);
int pthread_rwlockattr_setpshared(pthread_rwlockattr_t *,
   int );
pthread_t pthread_self(void);

int pthread_setcancelstate(int , int *) __asm("_" "pthread_setcancelstate" "$UNIX2003");
int pthread_setcanceltype(int , int *) __asm("_" "pthread_setcanceltype" "$UNIX2003");
int pthread_setconcurrency(int);
int pthread_setschedparam(pthread_t ,
    int ,
                                const struct sched_param *);
int pthread_setspecific(pthread_key_t ,
         const void *);
void pthread_testcancel(void) __asm("_" "pthread_testcancel" "$UNIX2003");



int pthread_is_threaded_np(void);


int pthread_main_np(void);


mach_port_t pthread_mach_thread_np(pthread_t);
size_t pthread_get_stacksize_np(pthread_t);
void * pthread_get_stackaddr_np(pthread_t);


int pthread_cond_signal_thread_np(pthread_cond_t *, pthread_t);


int pthread_cond_timedwait_relative_np(pthread_cond_t *,
     pthread_mutex_t *,
     const struct timespec *);


int pthread_create_suspended_np(pthread_t *,
                         const pthread_attr_t *,
                         void *(*)(void *),
                         void *);
int pthread_kill(pthread_t, int);

pthread_t pthread_from_mach_thread_np(mach_port_t);

int pthread_sigmask(int, const sigset_t *, sigset_t *) __asm("_" "pthread_sigmask" "$UNIX2003");
void pthread_yield_np(void);


# 704 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h" 2

typedef pthread_t rb_nativethread_t;
# 719 "/opt/local/lib/ruby/1.8/i686-darwin8.8.3/ruby.h"
int is_ruby_native_thread (void);




void ruby_native_thread_kill (int);
# 2 "libsvm.c" 2
# 1 "/opt/local/include/svm.h" 1







struct svm_node
{
 int index;
 double value;
};

struct svm_problem
{
 int l;
 double *y;
 struct svm_node **x;
};

enum { C_SVC, NU_SVC, ONE_CLASS, EPSILON_SVR, NU_SVR };
enum { LINEAR, POLY, RBF, SIGMOID, PRECOMPUTED };

struct svm_parameter
{
 int svm_type;
 int kernel_type;
 int degree;
 double gamma;
 double coef0;


 double cache_size;
 double eps;
 double C;
 int nr_weight;
 int *weight_label;
 double* weight;
 double nu;
 double p;
 int shrinking;
 int probability;
};

struct svm_model *svm_train(const struct svm_problem *prob, const struct svm_parameter *param);
void svm_cross_validation(const struct svm_problem *prob, const struct svm_parameter *param, int nr_fold, double *target);

int svm_save_model(const char *model_file_name, const struct svm_model *model);
struct svm_model *svm_load_model(const char *model_file_name);

int svm_get_svm_type(const struct svm_model *model);
int svm_get_nr_class(const struct svm_model *model);
void svm_get_labels(const struct svm_model *model, int *label);
double svm_get_svr_probability(const struct svm_model *model);

void svm_predict_values(const struct svm_model *model, const struct svm_node *x, double* dec_values);
double svm_predict(const struct svm_model *model, const struct svm_node *x);
double svm_predict_probability(const struct svm_model *model, const struct svm_node *x, double* prob_estimates);

void svm_destroy_model(struct svm_model *model);
void svm_destroy_param(struct svm_parameter *param);

const char *svm_check_parameter(const struct svm_problem *prob, const struct svm_parameter *param);
int svm_check_probability_model(const struct svm_model *model);
# 3 "libsvm.c" 2
# 1 "ruby-ext.h" 1
# 24 "ruby-ext.h"
static VALUE rx_ary_size(VALUE ary) {
  return ((int)((((long)(rb_funcall(ary, rb_intern("size"), 0)))&0x01)?(((long)rb_funcall(ary, rb_intern("size"), 0))>>(int)1):rb_num2long((VALUE)rb_funcall(ary, rb_intern("size"), 0))));
}
# 4 "libsvm.c" 2


const struct svm_node Null_Node = { 0, 0.0 };

VALUE mLibsvm;
VALUE mKernelType;
VALUE mSvmType;

VALUE cNode;
VALUE cProblem;
VALUE cSvmParameter;
# 24 "libsvm.c"
static struct svm_problem *problem_new() {
  struct svm_problem *n;
  n = (struct svm_problem *) calloc(1,sizeof(struct svm_problem));
  if(n == ((void *)0))
    return ((void *)0);
  return n;
}

static void problem_free(struct svm_problem *n) {
  int i;
  if(n->l > 0) {
    free(n->y);
    for(i = 0; i < n->l; ++i) {
      free(*n->x);
    }
    free(n->x);
  }
  free(n);
}

static VALUE problem_alloc(VALUE cls) {
  struct svm_problem *n;
  n = problem_new();
  if(n == ((void *)0))
    rb_raise(rb_eNoMemError, "Not enough memory for allocating Libsvm::Problem.");
  return rb_data_object_alloc(cls,n,(RUBY_DATA_FUNC)0,(RUBY_DATA_FUNC)problem_free);
}

static VALUE cProblem_l(VALUE obj) { struct svm_problem *struct_var; do { rb_check_type((VALUE)(obj),0x22); struct_var = (struct svm_problem*)(((struct RData*)(obj))->data);} while (0); return rb_int2inum(struct_var->l); } static VALUE cProblem_l_set(VALUE obj,VALUE val) { struct svm_problem *struct_var; do { rb_check_type((VALUE)(obj),0x22); struct_var = (struct svm_problem*)(((struct RData*)(obj))->data);} while (0); struct_var->l = ((int)((((long)(val))&0x01)?(((long)val)>>(int)1):rb_num2long((VALUE)val))); return ((VALUE)4); };
# 65 "libsvm.c"
static VALUE cProblem_examples_set(VALUE obj,VALUE labels_ary,VALUE nodes_arys_ary) {
  struct svm_problem *prob;
  struct svm_node *node_struct;
  VALUE num;
  int i, j, k, nodes_ary_len;
  VALUE label, node, nodes_ary;


  num = rx_ary_size(labels_ary);
  if(num != rx_ary_size(nodes_arys_ary)) {
    rb_raise(rb_eArgError, "Number of labels (%i) does not match number of features (%i).", num, rx_ary_size(nodes_arys_ary));
  }


  do { rb_check_type((VALUE)(obj),0x22); prob = (struct svm_problem*)(((struct RData*)(obj))->data);} while (0);


  if(prob->l > 0) {
    free(prob->y);
    for(i = 0; i < num; ++i) {
      free(*(prob->x+i));
    }
    free(prob->x);
  }

  prob->y = (double *)calloc(num,sizeof(double));
  if(prob->y == 0) {
    rb_raise(rb_eNoMemError, "%s:%i", "libsvm.c",92);
  }
  prob->x = (struct svm_node **)calloc(num,sizeof(struct svm_node *));
  if(prob->x == 0) {
    rb_raise(rb_eNoMemError, "%s:%i", "libsvm.c",96);
  }

  for(i = 0; i < num; ++i) {
    *prob->y = rb_num2dbl((VALUE)(rb_ary_entry(labels_ary,i)));

    nodes_ary = rb_ary_entry(nodes_arys_ary,i);
    nodes_ary_len = rx_ary_size(nodes_ary);


    *(prob->x+i) = (struct svm_node *)cmalloc(nodes_ary_len,sizeof(struct svm_node));
    if(*(prob->x+i) == 0) {
      rb_raise(rb_eNoMemError, "%s:%i", "libsvm.c",108);
    }


    for(j = 0; j < nodes_ary_len; ++j) {
      do { rb_check_type((VALUE)(rb_ary_enttry(nodes_ary,j)),0x22); node_struct = (struct svm_node*)(((struct RData*)(rb_ary_enttry(nodes_ary,j)))->data);} while (0);
      memcpy(*(prob->x+j),node_struct,sizeof(struct svm_node));
    }
    j++;
    memcpy(*(prob->x+j),&Null_Node,sizeof(struct svm_node));
  }

  prob->l = num;

  return ((VALUE)4);
}
# 133 "libsvm.c"
static struct svm_node *node_new() {
  struct svm_node *n;
  n = (struct svm_node *) calloc(1,sizeof(struct svm_node));
  if(n == ((void *)0))
    return ((void *)0);
  return n;
}

static void node_free(struct svm_node *n) {
  free(n);
}

static VALUE node_alloc(VALUE cls) {
  struct svm_node *n;
  n = node_new();
  if(n == ((void *)0))
    rb_raise(rb_eNoMemError, "Not enough memory for allocating Node.");

  return rb_data_object_alloc(cls,n,(RUBY_DATA_FUNC)0,(RUBY_DATA_FUNC)node_free);
}

static VALUE cNode_index(VALUE obj) { struct svm_node *struct_var; do { rb_check_type((VALUE)(obj),0x22); struct_var = (struct svm_node*)(((struct RData*)(obj))->data);} while (0); return rb_int2inum(struct_var->index); } static VALUE cNode_index_set(VALUE obj,VALUE val) { struct svm_node *struct_var; do { rb_check_type((VALUE)(obj),0x22); struct_var = (struct svm_node*)(((struct RData*)(obj))->data);} while (0); struct_var->index = ((int)((((long)(val))&0x01)?(((long)val)>>(int)1):rb_num2long((VALUE)val))); return ((VALUE)4); };
static VALUE cNode_value(VALUE obj) { struct svm_node *struct_var; do { rb_check_type((VALUE)(obj),0x22); struct_var = (struct svm_node*)(((struct RData*)(obj))->data);} while (0); return DBL2NUM(struct_var->value); } static VALUE cNode_value_set(VALUE obj,VALUE val) { struct svm_node *struct_var; do { rb_check_type((VALUE)(obj),0x22); struct_var = (struct svm_node*)(((struct RData*)(obj))->data);} while (0); struct_var->value = rb_float_new(val); return ((VALUE)4); };



void Init_libsvm() {
  mLibsvm = rb_define_module("Libsvm");


  cProblem = rb_define_class_under(mLibsvm, "Problem", rb_cObject);
  rb_define_alloc_func(cProblem, problem_alloc);
  rb_define_method(cProblem, "l", cProblem_l, 0); rb_define_method(cProblem, "l" "=", cProblem_l_set, 1);
  rb_define_method(cProblem,"set_examples",cProblem_examples_set,2);


  cSvmParameter = rb_define_class_under(mLibsvm, "SvmParameter", rb_cObject);


  cNode = rb_define_class_under(mLibsvm, "Node", rb_cObject);
  rb_define_alloc_func(cNode, node_alloc);
  rb_define_method(cNode, "index", cNode_index, 0); rb_define_method(cNode, "index" "=", cNode_index_set, 1);
  rb_define_method(cNode, "value", cNode_value, 0); rb_define_method(cNode, "value" "=", cNode_value_set, 1);

  mKernelType = rb_define_module_under(mLibsvm,"KernelType");
  rb_define_const(mKernelType, "LINEAR", rb_int2inum(LINEAR));
  rb_define_const(mKernelType, "POLY", rb_int2inum(POLY));
  rb_define_const(mKernelType, "RBF", rb_int2inum(RBF));
  rb_define_const(mKernelType, "SIGMOID", rb_int2inum(SIGMOID));
  rb_define_const(mKernelType, "PRECOMPUTED", rb_int2inum(PRECOMPUTED));

  mSvmType = rb_define_module_under(mLibsvm,"SvmType");
  rb_define_const(mSvmType, "C_SVC", rb_int2inum(C_SVC));
  rb_define_const(mSvmType, "NU_SVC", rb_int2inum(NU_SVC));
  rb_define_const(mSvmType, "ONE_CLASS", rb_int2inum(ONE_CLASS));
  rb_define_const(mSvmType, "EPSILON_SVR", rb_int2inum(EPSILON_SVR));
  rb_define_const(mSvmType, "NU_SVR", rb_int2inum(NU_SVR));
}
