// SysY 版本：使用 sylib I/O
#include "sylib.h"

int main() {
  int n = getint();
  if (n < 0) {
    // 打印 "invalid input\n"
    putch('i'); putch('n'); putch('v'); putch('a'); putch('l'); putch('i'); putch('d'); putch(' ');
    putch('i'); putch('n'); putch('p'); putch('u'); putch('t'); putch('\n');
    return 0;
  }
  int f = 1, i = 2;
  while (i <= n) { f = f * i; i = i + 1; }  // 32 位有符号溢出按 2^32 截断
  putint(f); putch('\n');
  return 0;
}