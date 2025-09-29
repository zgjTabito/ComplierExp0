#include <stdio.h>

// 计算 n!，用模避免溢出与 UB（保持大量乘法工作量）
static inline uint64_t factorial_mod(unsigned n) {
    const uint64_t MOD = 1000000007ULL;
    uint64_t f = 1;
    for (unsigned i = 2; i <= n; ++i) {
        f = (f * i) % MOD;
    }
    return f;
}

int main(int argc, char** argv) {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    // n 很大以放大计算量；trials 重复次数取中位数
    unsigned n = (argc > 1 ? (unsigned)strtoul(argv[1], nullptr, 10) : 100000000);
    int trials  = (argc > 2 ? atoi(argv[2]) : 3);

    // 预热，防止被优化掉
    volatile uint64_t sink = factorial_mod(1000);

    using clk = chrono::steady_clock;
    vector<double> ts; ts.reserve(trials);

    for (int t = 0; t < trials; ++t) {
        auto st = clk::now();
        sink ^= factorial_mod(n);
        auto ed = clk::now();
        ts.push_back(chrono::duration<double, milli>(ed - st).count());
    }

    nth_element(ts.begin(), ts.begin() + ts.size()/2, ts.end());
    double med = ts[ts.size()/2];

    cout << "n=" << n << ", trials=" << trials
         << ", median=" << med << " ms, checksum=" << sink << "\n";
    return 0;
}
