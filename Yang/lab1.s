    .section .text
    .globl main
    .align  2

# int main(void)
main:
    # --- Prologue: 建栈、保存返回地址与帧指针 ---
    addi    sp, sp, -48          # 预留 48 字节栈空间（16B 对齐）
    sd      ra, 40(sp)           # 保存 ra
    sd      s0, 32(sp)           # 保存 s0
    addi    s0, sp, 48           # s0 = 栈帧顶（作为帧指针）

    # 本函数的局部变量布局（相对 sp）：
    #   24(sp): n    (long long, 8B)
    #   16(sp): f    (unsigned long long, 8B)
    #    8(sp): i    (long long, 8B)
    #  32/40(sp): 已用于保存 s0/ra

    # --- 调用 scanf("%lld", &n) ---
    la      a0, fmt_scan         # a0 = "%lld"
    addi    a1, sp, 24           # a1 = &n
    call    scanf                # 返回值在 a0

    li      t0, 1
    bne     a0, t0, .Lret0       # if (scanf != 1) return 0;

    # 取 n，判断 n < 0
    ld      t1, 24(sp)           # t1 = n
    bltz    t1, .Linvalid        # if (n < 0) goto invalid;

    # f = 1; i = 2;
    li      t2, 1
    sd      t2, 16(sp)           # f = 1
    li      t3, 2
    sd      t3, 8(sp)            # i = 2

# for (long long i = 2; i <= n; ++i) { f *= (unsigned long long)i; }
.Lloop:
    ld      t1, 24(sp)           # t1 = n
    ld      t3, 8(sp)            # t3 = i
    blt     t1, t3, .Lafter_loop # if (n < i) break;

    # 读取 f 与 i，执行 64 位乘法（RV64M）
    ld      t2, 16(sp)           # t2 = f
    mul     t2, t2, t3           # t2 = f * i  (低 64 位)
    sd      t2, 16(sp)           # f = t2

    addi    t3, t3, 1            # ++i
    sd      t3, 8(sp)            # 存回 i
    j       .Lloop

# printf("%llu\n", f);
.Lafter_loop:
    la      a0, fmt_print        # a0 = "%llu\n"
    ld      a1, 16(sp)           # a1 = f (unsigned long long)
    call    printf
    j       .Lret0

# puts("invalid input");
.Linvalid:
    la      a0, str_invalid
    call    puts

# return 0;
.Lret0:
    li      a0, 0

    # --- Epilogue: 恢复现场、退栈返回 ---
    ld      ra, 40(sp)
    ld      s0, 32(sp)
    addi    sp, sp, 48
    ret


    .section .rodata
    .align  3
fmt_scan:
    .string "%lld"
fmt_print:
    .string "%llu\n"
str_invalid:
    .string "invalid input"
