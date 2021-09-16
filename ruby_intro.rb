# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.inject(0,:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  end
  largest = arr.sort[-1]
  second = arr.sort[-2]
  if largest and second
    return largest + second
  
  elsif largest
    return largest
  
  elsif second
    return second
  
  end 
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return arr.combination(2).any? {|a,b| a + b == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name 
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[^aeiou\d\W]/i.match(s) ? true : false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /^[01]*(00)$/ =~ s
    return true
  end
  return true if s == "0"
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE

  attr_accessor :isbn
  attr_accessor :price
  def initialize isbn,price
    self.isbn = isbn
    self.price = price
    
    if isbn == ""
      raise ArgumentError
    end
    if price <= 0
      raise ArgumentError
    end
  end 
  
  def price_as_string
    return "$" + sprintf("%.2f",self.price)
  end
end
