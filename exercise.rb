class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str = str.gsub(/\b[a-z][a-zA-Z0-9]{4,}\b/, "marklar")
    str = str.gsub(/\b[A-Z][a-zA-Z0-9]{4,}\b/, "Marklar")
    return str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  
  def self.evenF(n)
    # recursive function to find nth even fib
    if n == 0
      return 0
    end
    if n == 1
      return 2
    end
    return ((4 * evenF(n-1)) + evenF(n-2))
  end

  def self.even_fibonacci(nth)
    sum = 0
    if nth > 2
      x = nth/3 #every 3rd fib is even
      for i in 1..x do
        sum += evenF(i)
      end
    end
    return sum
  end
end