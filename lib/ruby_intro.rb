# When done, submit this entire file to the autograder.

# Part 1

#Return the sum of the elements of an array.
def sum arr
  return(arr.sum)
end

#Return the sum of the two largest elements of an array.
def max_2_sum arr

  #If the array is larger than 1, compute the sum of the two highest elements.
  if arr.length > 1
    #Sort the array, then return the sum of the last two elements.
    arr.sort[-1] + arr.sort[-2]
  
  #If the length of the array is 1, return the element.
  elsif arr.length == 1
    arr.max
  
  #Otherwise return 0
  else
    0
  end
end

#Return true if any two elements in arr sum to n.
def sum_to_n? arr, n
  arr.combination(2).any?{|a,b| a+b == n}
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  if s == "0"
    return 0
  end
  /^(?:[10]*00|00?)$/.match(s)
end

# Part 3

class BookInStock
  #Constructor to initialize the object. Takes in ISBN and price.
  def initialize(isbn, price)
    #If either argument is incorrect, raise an error.
    raise ArgumentError.new(
      "Incorrect price or ISBN entered"
      ) if isbn == "" or price <= 0
    @isbn = isbn
    @price = price
  end

  #Methods to get and set ISBN and price
  def isbn=(newIsbn)
    @isbn = newIsbn
  end

  def price=(newPrice)
    @price = newPrice
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def price_as_string()
    "$%0.2f" % [@price]
  end
end