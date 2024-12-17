#   Iterative Fibonacci method

def Fibonacci(_num)
  return [] if _num <= 0
  return [0] if num == 1

  fib_sequence = [0, 1]
  (n - 2).times do
    fib_sequence << fib_sequence[-1] + fib_sequence[-2]
  end
  fib_sequence
end
p Fibonacci(8)

#   Recursive Fibonacci method

def Fibonacci_Recursive(num, fib_sequence = [0, 1])
  return 0 if num <= 0
  return fib_sequence[0, num] if num <= fib_sequence.size

  FibonacciRecursive(num, fib_sequence << fib_sequence[-1] + fib_sequence[-2])
end

p FibonacciRecursive(8)
