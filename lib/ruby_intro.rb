# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE 
  if arr.empty?; return 0; end;
  total = 0
  arr.each { |x| total += x }
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?; return 0; end;
  if arr.length == 1; return arr[0]; end;
  arr.sort!
  return arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?; return false; end;
  left = 0
  right = arr.length - 1
  arr.sort!
  while left < right do
    if arr[left] + arr[right] == n
      return true
    elsif arr[left] + arr[right] < n
      left += 1
    else 
      right -= 1
    end
  end
  return false  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s =~ /^[aeiou]/i; return false; end;
  if s =~ /^[a-z]/i; return true; end;
  return false;
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?; return false; end;
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? || price <= 0; raise ArgumentError; end
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price
    @price
  end
  def price=(price)
    @price = price
  end
  def price_as_string
    return "$%.2f" % [@price.to_s]
  end
end
