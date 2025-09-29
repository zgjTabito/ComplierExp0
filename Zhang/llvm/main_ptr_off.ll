; ModuleID = 'main.c'
source_filename = "main.c"

define i32 @main() {
entry:
    ; 定义变量
    %f = alloca i32, align 4         ; 申请 f 空间
    %i = alloca i32, align 4         ; 申请 i 空间
    %ptr_f = alloca i32*, align 8    ; 申请 ptr_f 空间
    %ptr_i = alloca i32*, align 8    ; 申请 ptr_i 空间

    ; 设置初始值
    store i32 1, i32* %f, align 4    ; f = 1
    store i32 2, i32* %i, align 4    ; i = 2
    store i32* %f, i32** %ptr_f, align 8 ; ptr_f = &f
    store i32* %i, i32** %ptr_i, align 8 ; ptr_i = &i

    ; 指针操作：*ptr_f = f
    %load_ptr_f = load i32*, i32** %ptr_f, align 8
    %val_f = load i32, i32* %f, align 4
    store i32 %val_f, i32* %load_ptr_f, align 4

    ; 指针操作：*ptr_i = i
    %load_ptr_i = load i32*, i32** %ptr_i, align 8
    %val_i = load i32, i32* %i, align 4
    store i32 %val_i, i32* %load_ptr_i, align 4

    ; *ptr_f = 0
    store i32 0, i32* %load_ptr_f, align 4

    ; *ptr_i = 0
    store i32 0, i32* %load_ptr_i, align 4

    ; 返回 0
    ret i32 0
}
