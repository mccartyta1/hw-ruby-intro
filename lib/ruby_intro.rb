# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do |x|
    sum += x
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size < 2
    if arr.size == 1
      return arr[0] 
    else 
        return 0
    end
  end
  
  return arr.sort[-1] + arr.sort[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.permutation(2).to_a.each do |x|
    if sum(x) == n
      return true
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
  if s.size == 0 
    return false
  end
  return /[b-df-hj-np-tv-z]/i.match(s[0]) != nil
end

def binary_multiple_of_4? s
  # Check to make sure everything is 0s and 1s
  if /[^0-1]/ =~ s
    return false
  end
  # if the size is 1 or 2, it can be divisible
  # if s.size < 3 && s.size > 0
  #  return !(/[^0]/ =~ s)
  #end
  # So if size isn't 0, and eithers is all 0s or ends with 100 it is divisible by 4.
  return s.size > 0 && ( s.end_with?("100") || !( /[^0]/ =~ s ) )
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize isbn, price
    @isbn = isbn
    @price = price
    if @isbn.size == 0 || @price <= 0
      raise ArgumentError.new("Invalid")
    end
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(value)
   @isbn = value
  end
  
  def price
    @price
  end
  
  def price=(value)
   @price = value
  end
  
  def price_as_string
    return "$" + sprintf("%.2f", price)
  end
end