# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr.max(2).sum
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  hashx = Hash.new
  target = n
  arr.each do |num|
    target = n-num
    return true if hashx.key?(target)
    hashx[num] = 1 
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  return true if s.match?(/\A[[a-z]&&[^aeiou]]/i)  #
  return false
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  return true if s.match?(/\A(0|[01]*00)\z/)
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize (isbn, price)
    raise ArgumentError,"isbn not valid"if isbn == ''
    raise ArgumentError, "price has to be higher than 0" if price <= 0
    @isbn = isbn 
    @price =  price
  end
  def price_as_string
    return "$%.2f" % @price
  end
  attr_accessor(:isbn, :price)
end

