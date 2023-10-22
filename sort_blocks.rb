class Book
  attr_reader :author, :title, :count
  def initialize(author,title,count)
    @author = author
    @title = title
    @count = count
  end
  def to_s
    "author: #{author} title: #{title} count: #{count}"
  end
end

book_array = []
book_array.push(Book.new("Beatrice Potter","Peter Rabbit",25))
book_array.push(Book.new("Henry Fielding","Tom Jones",12))
book_array.push(Book.new("Bob Woodward","All the President's Men",30))

puts "Sorting alphabetically by author"

new_array = book_array.sort do |a,b|
  author1 = a.author.downcase
  author2 = b.author.downcase
  author1 <=> author2
end

puts new_array

puts " "
puts "*************************************************"
puts " "

puts "Sorting alphabetically by title"
title_array = book_array.sort do |a,b|
  title1 = a.title.downcase
  title2 = b.title.downcase
  title1 <=> title2
end

puts title_array

puts " "
puts "*************************************************"
puts " "

puts "Sorting by copies asceding"
copy_array = book_array.sort do |a,b|
  copy1 = a.count
  copy2 = b.count
  copy1 <=> copy2
end

puts copy_array