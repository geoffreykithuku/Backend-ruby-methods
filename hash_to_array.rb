=begin 
    Write a program that collects 5 keys and 5 values from the user, and stores them in a hash.  Write a function that accepts the hash as a parameter and prints out an array of keys and an array of values.  Call the function within your program so you know it works. (Question: Can you find online information on Ruby hash methods that will help with this function?)  Call this program hash_to_array.rb.
=end

def collect_keys_and_values

    hash = {}

    puts "You will be prompted to enter a key and its value 5 times"
    puts " "
    puts "*********************************"

    5.times do
    puts "Enter a key"
    key = gets.chomp
    puts "Enter a value"
    value = gets.chomp 
    hash[key] = value
    end

    hash
end

def hash_to_array hash

    puts "Array of keys: "

    pp hash.keys #used pp inorder to print formatted array
    puts " "

    puts "Array of values: "
    pp hash.values #used pp inorder to print formatted array
end

#call the hash_to_array and pass a function that returns a hash
hash_to_array collect_keys_and_values