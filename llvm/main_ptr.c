#include "sylib.h"

int main() {
  // 无用的指针变量，用于引入 int 指针类型
  int *ptr_a = NULL;
  int *ptr_b = NULL;

  // 指针操作
  int f = 1, i = 2;
  int *ptr_f = &f;
  int *ptr_i = &i;
  *ptr_f = f;
  *ptr_i = i;

  *ptr_f = 0;
  *ptr_i = 0;

  return 0;
}
