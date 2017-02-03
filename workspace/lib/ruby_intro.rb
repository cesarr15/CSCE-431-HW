# When done, submit this entire file to the autograder.

# Part 1

def sum (array)
  array.inject(0){|sum,x| sum + x } #each element in enum the block is passed an accumulator valueand the element
end

def max_2_sum (array)
  if array.size < 1
      return 0
  end
  max_arr = array.max(2) #take the two largest elements 
  return max_arr.reduce(:+) #add the elements in the array 
  
end

def sum_to_n? (array, n)
  if array != nil
   y = !!array.combination(2).detect{|a,b| a+b == n} 
   return y 
  else
   return false
  end
end

# Part 2

def hello(name)
    "Hello, #{name}"
end

def starts_with_consonant? (s)
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? (s)
  if s =~ /\A\d+\z/ ? true : false == true
     num = s.to_i(2)
     return num % 4 == 0
  else
      return false
  end
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price
    def initialize (isbn, price)
        raise ArgumentError.new("ISBN is empty...fill it") unless isbn.length > 0
        raise ArgumentError.new("Price cannot be less than or equal to zero") unless price > 0
        @isbn = isbn
        @price =Float(price)
        
    end    
    def price_as_string 
       "$#{format("%.2f", @price)}"
    end    
end
