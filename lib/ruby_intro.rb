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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

#arr = [1,2,3,4,5]
#puts (sum_to_n?([1,2,3,4,5], 5))       # 2 + 3 = 5
#puts (sum_to_n?([3,0,5], 5))        # 0 + 5 = 5
 #     puts (sum_to_n?([-1,-2,3,4,5,-8], -3)) # handles negative sum
  #    puts (sum_to_n?([-1,-2,3,4,5,-8], 12))  # 3 + 4 + 5 = 12 (not 3 elements)
   #   puts (sum_to_n?([-1,-2,3,4,6,-8], 12)) # no two elements that sum