# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |element|
    sum += element
  end

  sum
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  sum = 0
  arr.sort!.reverse!
  sum = arr[0]+arr[1]

  sum
end

def sum_to_n? arr, n
  for i in 0...arr.length-1 do
    for j in i+1...arr.length
      
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return 'Hello, '+ name
end

def starts_with_consonant? s

  if s.empty? || "AEIOUaeiou".include?(s[0]) || !s[0].match?(/[a-zA-Z]/)
    return false
  end

  return true
end

def binary_multiple_of_4? s
  if s.empty? || !(s.match?(/^[01]+$/))
    return false
  end
s.to_i(2) % 4 == 0
end

# Part 3
class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN number cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', price)
  end
end
