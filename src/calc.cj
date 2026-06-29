package ci_test

func add(a: Int, b: Int): Int {
    a + b
}

func factorial(n: Int): Int {
    if (n <= 1) {
        return 1
    }
    n * factorial(n - 1)
}

func isPrime(n: Int): Bool {
    if (n <= 1) {
        return false
    }
    for (i in 2..n) {
        if (i * i > n) {
            break
        }
        if (n % i == 0) {
            return false
        }
    }
    true
}
