# (1) Write a method that returns in an array all the numbers between 1 and 100 that are divisible by 2 or 3 or 5. 
# Then call the method in your program and print out what it returns.  
# Call the program divisible.rb.

def divisible_235
    array = Array.new

    1.upto(100) do |number|
        if (number.even? || number % 3 == 0 || number % 5 == 0)
            array.push(number)
        end
    end

    return array
end

puts divisible_235.inspect