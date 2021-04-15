# (2) Write a program hangman.rb that contains a function called hangman.  
# The function's parameters are a word and an array of letters.  
# It returns a string showing the letters that have been guessed.  
# Call the function from within your program so that you know that it works.

# Example: hangman("bob",["b"]) should evaluate to "b_b"
# Example: hangman("alphabet",["a","h"]) should return "a__ha___"

def hangman(word, letters)
    string_showing_the_letters_that_have_been_guessed = ""
    word.each_char do |letter|
        string_showing_the_letters_that_have_been_guessed += (letters.include? letter) ? letter : "_"
    end
    puts string_showing_the_letters_that_have_been_guessed
end

hangman("bob",["b"])
hangman("alphabet",["a","h"])

hangman("word", ["a", "w"])
hangman("hangman", ["a", "m", "n", "h", "g"])