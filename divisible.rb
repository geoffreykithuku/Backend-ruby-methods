=begin
    Write a method that returns in an array all the numbers between 1 and 100 that are divisible by 2 or 3 or 5. Then call the method in your program and print out what it returns.  Call the program divisible.rb.
=end

def divisible
    result = []
    for el in 1..100
        if el % 2 == 0 
            result.push(el)
        end

        if el % 3 == 0
            result.push(el)
        end
        if el % 5 == 0
            result.push(el)
        end
    end
    result.uniq
end

divisible