=begin
    Write a program hangman.rb that contains a function called hangman.  The function's parameters are a word and an array of letters.  It returns a string showing the letters that have been guessed.  Call the function from within your program so that you know that it works.
=end

def hangman(word, array)
  result = word
  
      result.each_char do |char|
        if !array.include?(char)
          result.gsub!(char, "_")
        end
      end
  result
end

puts hangman('bob', ['b'])
puts hangman('alphabet', ['a', 'h'])