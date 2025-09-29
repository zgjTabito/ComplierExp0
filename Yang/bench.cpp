#include <bits/stdc++.h>
using namespace std;

// ===== 被测函数：示例 =====
int foo(const int* a, int n) {
    int s = 0;
    for (int i = 0; i < n; ++i) {
        int x = a[i];
        // 放点简单可优化的逻辑
        if (((x * 2) & 1) == 0) s += x;
    }
    return s;
}

// ===== 基准主程序 =====
int main(int argc, char** argv) {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    long long n = (argc > 1 ? atoll(argv[1]) : 100000000); // 默认 1e8
    int trials = (argc > 2 ? atoi(argv[2]) : 3);           // 重复次数取最小值

    vector<int> a(n);
    for (long long i = 0; i < n; ++i) a[i] = int(i & 1023); // 轻量初始化

    // 预热
    volatile int sink = 0;
    sink ^= foo(a.data(), (int)n);

    using clk = chrono::steady_clock;
    vector<double> times;
    times.reserve(trials);

    for (int t = 0; t < trials; ++t) {
        auto st = clk::now();
        sink ^= foo(a.data(), (int)n);      // 计时核心
        auto ed = clk::now();
        double ms = chrono::duration<double, std::milli>(ed - st).count();
        times.push_back(ms);
    }

    // 输出结果（最后只打印一次，避免 I/O 干扰）
    sort(times.begin(), times.end());
    double med = times[times.size()/2];
    cout << "n=" << n << ", trials=" << trials
         << ", median=" << med << " ms, checksum=" << sink << "\n";
    return 0;
}
