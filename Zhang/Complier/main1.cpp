#include <iostream>
#include <cmath>  // 用于包含数学库

// 宏定义替换
#define FACTORIAL_START 2  // 定义一个宏，替换程序中的数字
#define PAI 3.14           // 定义圆周率宏
#define SQUARE(x) ((x) * (x))  // 定义一个宏来计算平方

// 定义DEBUG宏
#define DEBUG

// 条件编译
#ifdef DEBUG
    #define PRINT_DEBUG_INFO(x) std::cout << "Debug Info: " << x << std::endl;
#else
    #define PRINT_DEBUG_INFO(x)  // 如果没有定义DEBUG宏，则不会打印调试信息
#endif

using namespace std;

int main() {
    int i, n, f;

    // 输出圆周率
    cout << "PI value: " << PAI << endl;

    cin >> n;
    i = FACTORIAL_START;  // 使用宏定义的值
    f = 1;

    // 调用PRINT_DEBUG_INFO，在调试模式下输出调试信息
    PRINT_DEBUG_INFO("Starting factorial calculation...");

    while (i <= n) {
        f = f * i;
        i = i + 1;
    }

    // 计算并输出n的平方
    cout << "Square of " << n << " is: " << SQUARE(n) << endl;

    cout << "Factorial result: " << f << endl;

    return 0;
}
