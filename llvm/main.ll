; ModuleID = 'main.ll'
source_filename = "main.c"

@.str = private unnamed_addr constant [15 x i8] c"invalid input\0A\00", align 1

declare i32 @getint()             ; 声明外部输入函数
declare void @putch(i32)          ; 声明外部输出函数 putch
declare void @putint(i32)         ; 声明外部输出函数 putint

define i32 @main() {
entry:
    ; 获取用户输入 n
    %n = call i32 @getint()

    ; if (n < 0)
    %cmp = icmp slt i32 %n, 0
    br i1 %cmp, label %invalid_input, label %valid_input

invalid_input:
    ; 打印 "invalid input\n"
    call void @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
    ret i32 0

valid_input:
    ; 初始化变量 f = 1, i = 2
    %f = alloca i32, align 4
    %i = alloca i32, align 4
    store i32 1, i32* %f, align 4
    store i32 2, i32* %i, align 4

    ; while (i <= n)
    br label %while_condition

while_condition:
    %i_val = load i32, i32* %i, align 4
    %cmp2 = icmp sle i32 %i_val, %n
    br i1 %cmp2, label %loop_body, label %loop_end

loop_body:
    %f_val = load i32, i32* %f, align 4
    %i_val2 = load i32, i32* %i, align 4
    %mul = mul i32 %f_val, %i_val2
    store i32 %mul, i32* %f, align 4
    %i_val3 = add i32 %i_val2, 1
    store i32 %i_val3, i32* %i, align 4
    br label %while_condition

loop_end:
    ; 输出结果 f
    %f_final = load i32, i32* %f, align 4
    call void @putint(i32 %f_final)
    call void @putch(i32 10) ; \n
    ret i32 0
}

declare void @puts(i8*)            ; 声明 puts 函数，用于输出字符串
