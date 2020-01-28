# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  total = 0

  # iterate and sum all the elements
  arr.each do |i|
    total += i
  end
  
  return total
end

def max_2_sum(arr)
  
  # special case: array length is short
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  
  # initialize storage
  max1 = arr[0]  # largest
  max2 = arr[1]  # second largest
  if(max2 > max1)
    temp = max2
    max2 = max1
    max1 = temp
  end
    
  # iterate and label max1, max2
  range = (1..arr.length-1).to_a
  range.each do |i|
    # find max1
    if arr[i] > max1
      max2 = max1
      max1 = arr[i]
    elsif arr[i] >= max2
      max2 = arr[i]
    end
  end
  
  # return max1 + max2
  return max1 + max2
end

def sum_to_n?(arr, n)
  
  # special case: array length is short
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  end
  
  # iterate and label
  range = (0..arr.length-1).to_a
  range.each do |i|
    range2 = (i+1..arr.length-1).to_a
    range2.each do |j|
      if i==j
        next
      end
      if (arr[i] + arr[j]) == n
        return true
      end
    end 
  end
  
  # no element found
  return false
end


# Part 2

def hello(name)
  # concat
  greetings = "Hello, "
  greetings.concat(name)
  
  # return
  return greetings
end

def starts_with_consonant?(s)
  
  # empty string
  if s.empty?
    return false
  # non-letter
  elsif s[0] !~ /[A-Za-z]/
    return false
  end
  
  # get the first character
  s_ = s[0]
  
  # is vowel?
  if s_ == 'a' || s_ == 'A'
    return false
  elsif s_ == 'e' || s_ == 'E'
    return false
  elsif s_ == 'i' || s_ == 'I'
    return false
  elsif s_ == 'o' || s_ == 'O'
    return false
  elsif s_ == 'u' || s_ == 'U'
    return false
  end    
  
  # is consonant
  return true
end

def binary_multiple_of_4?(s)
  
  # check if it has non-binary
  if s[0] !~ /[0-1]/
    return false
  end
  
  # convert binary to integer
  int = s.to_i(2)
  
  # divide by 4 test
  if int%4 == 0
    return true
  end
  
  return false
end

# Part 3

class BookInStock
  # constructor
  def initialize(i,p)
    
    # Argument Error 1 : empty string
    raise ArgumentError.new(
    "Invalid ISBN : #{i}"
    ) if i.empty?
    
    # Argument Error 2 : price < 0
    raise ArgumentError.new(
    "Price is less than equal to 0 : #{p}"
    ) if p<=0.0
    
    # initailize
    @isbn, @price = i, p
  end
  
  # accessor methods
  def isbn
    @isbn
  end
  def price
    @price
  end

  # setter methods
  def isbn=(i)
     @isbn = i
  end
  def price=(p)
     @price = p
  end
  
  # member methods
  def price_as_string
    rounded_price = sprintf "%.2f", @price
    price_in_string = "$" + rounded_price.to_s
  end
  
end
