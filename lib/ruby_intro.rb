# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  arr.sort.reverse[0, 2].sum || 0
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  return false if number.zero? && arr.empty?
  arr.combination(2).any? {|a,b| a + b == number}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  #return false if s.empty?
  /^[bcdfghjklmnpqrstvwxyz]/i.match(string) != nil

end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  return true if string == "0"
  return /^[10]*00$/.match(string) != nil
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end
  # attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn,price)
    raise ArgumentError, "Empty ISBN or Negative Price" if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%2.2f", @price)
  end

end
