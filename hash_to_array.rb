# (3) Write a program that collects 5 keys and 5 values from the user, and stores them in a hash.  
# Write a function that accepts the hash as optional parameters and prints out an array of keys and an array of values.  
# Call the function within your program so you know it works. 
# (Question: Can you find online information on Ruby hash methods that will help with this function?)  

# Call this program hash_to_array.rb.


def create_hash 
    hash = {}
    for i in 1..5
        key = ask("What is the key?")
        value = ask("What is the value?")
        hash[key] = value
    end
    hash_to_array(hash)
end

def ask(text)
    print text + " "
    return gets.chomp
end

def hash_to_array(hash)
    key_array   = hash.keys.to_s
    values_array = hash.values.to_s
    puts "-" * 15
    puts "Keys: " + key_array
    puts "Values: " + values_array
end

create_hash