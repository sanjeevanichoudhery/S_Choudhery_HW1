# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    sum =0
    if arr.length > 0
        for i in (0..arr.length-1) do
            sum += arr[i]
        end
    end
    return sum
end

def max_2_sum arr
    num1=0
    num2=0
    if arr.length>0
        if arr.length == 1
            num1 = arr[0]
        else
            if arr.length == 2
                num1 = arr[0]
                num2 = arr[1]
            else
                sorted_arr = arr.sort.reverse
                num1=sorted_arr[0]
                num2=sorted_arr[1]
            end
        end
    end
    return num1+num2
end

def sum_to_n? arr, n
    if arr.length <2
        return false
    end
    all_permutations = arr.permutation(2).to_a
    for i in (0..all_permutations.length-1)do
        return true if all_permutations[i][0]+all_permutations[i][1]==n
    end
    return false
end

# Part 2

def hello(name)
    result = "Hello, "+name
    return result
end

def starts_with_consonant? s
    s.downcase =~ /^[bcdfghjklmnpqrstvwxyz]/
end

def binary_multiple_of_4? s
    if s=="0"
         return true
    end
    s =~ /^[01]*00$/

end

# Part 3

class BookInStock
    def initialize(isbn_number,price)
        raise ArgumentError if isbn_number.to_s.empty?
        raise ArgumentError if price<=0
        @isbn = isbn_number
        @price = price
    end
    attr_accessor :isbn, :price

    def price_as_string
        return "$"+("%0.2f" % @price)
    end
end
