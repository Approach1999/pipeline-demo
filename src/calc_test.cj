package ci_test

import std.unittest.*
import std.unittest.testmacro.*

@Test
public class CalcTest {
    @TestCase
    public func test_add(): Unit {
        @Assert(add(2, 3), 5)
        @Assert(add(-1, 1), 0)
        @Assert(add(0, 0), 0)
    }

    @TestCase
    public func test_factorial(): Unit {
        @Assert(factorial(0), 1)
        @Assert(factorial(1), 1)
        @Assert(factorial(5), 120)
        @Assert(factorial(10), 3628800)
    }

    @TestCase
    public func test_isPrime(): Unit {
        @Assert(!isPrime(1))
        @Assert(isPrime(2))
        @Assert(isPrime(3))
        @Assert(!isPrime(4))
        @Assert(isPrime(17))
        @Assert(!isPrime(100))
    }
}
