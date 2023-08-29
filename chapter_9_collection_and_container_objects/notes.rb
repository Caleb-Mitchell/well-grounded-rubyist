# 9.0

# my_array = [1, 2, 3, 4, 5]
# p my_array.sort
# p my_array.reverse
# p(my_array.select { |num| num > 2 })
# p my_array.count
# p(my_array.map { |num| num * 2 })

# 9.1

# using `each_with_index`
# hash = { red: "ruby", white: "diamond", green: "emerald" }
# hash.each_with_index do |(key, value), i|
#   puts "Pair #{i} is: #{key}/#{value}"
# end

# interesting syntax in book with curly braces, solargraph doesn't like it
# hash.each_with_index { |(key, value), idx| p "Pair #{idx} is: #{key}/#{value}" }

# using `each.with_index`
# hash = { red: "ruby", white: "diamond", green: "emerald" }
# hash.each.with_index do |(key, value), i|
#   puts "Pair #{i} is: #{key}/#{value}"
# end

# Pair 0 is: red/ruby
# Pair 1 is: white/diamond
# Pair 2 is: green/emerald

# convert array to hash (with explicit instructions)
# array = ["a", "b", "c", "d"]
# new_hash = array.each_slice(2).to_h
# p new_hash

# array = [[:name, "Joe"], [:age, 10], [:favorite_color, "blue"]]
# p array.to_h

# 9.2.1

# a = Array.new
# p a
# p Array.new(3)
# p Array.new(3, "abc")
# p Array.new(3) { |i| 10 * (i + 1) }

# a = Array.new(3, "abc")
# p a
# a[0] << "def"
# p a
# puts a[1]
# p Array.new(3) { "abc" }

# a = []
# p a
# a = [1, 2, "three", 4, []]
# p a

# a = ["1", "2", "3"]
# p a[1]
# a.each do |num|
#   puts num if num.match?(/[13]/)
# end

# a = %q["It was the 'best' of times"]
# p a

# call an anonymous function with square brackets, chatgpt example
# Define a lambda that takes two numbers and returns their sum
# add = ->(a, b) { a + b }

# Call the lambda using different syntaxes
# puts add.call(2, 3) # => 5
# puts add.(2, 3) # => 5
# puts add[2, 3] # => 5

=begin
As you can see, the square brackets are just another way to invoke the lambda
with the given arguments. This is similar to how you can use square brackets to
access elements in arrays or hashes, or to define custom methods that act like
indexers. You can find more information about lambdas and procs in Ruby on this
websitehttps://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/. I hope this
helps you understand how square brackets work in Ruby. blush
=end

# string = "A string"
# string.respond_to?(:to_ary) # => false
# string.respond_to?(:to_a) # => false
# Array(string) # => ["A string"]
# def string.to_a
#   split(//)
# end
# Array(string) # => ["A", " ", "s", "t", "r", "i", "n", "g"]

# %w(Joe Leo III) # => ["Joe", "Leo", "III"]
# %w{ Joe Leo III } # => ["Joe", "Leo", "III"]
# %w(David\ A.\ Black is a Rubyist.) # => ["David A. Black", "is", "a", "Rubyist."]
# what's the difference with below?
# %W(Joe is #{2018 - 1981} years old.) # => ["Joe", "is", "37", "years", "old."]

# %i(a b c) # => [:a, :b, :c]
# d = "David"
# p %I("#{d}") # => [:"\"David\""]

# obj = Object.new
# Array.try_convert(obj) # => nil
# def obj.to_ary
#   [1, 2, 3]
# end # => :to_ary
# Array.try_convert(obj) # => [1, 2, 3]
# def obj.to_a
#   "Not an array!"
# end # => :to_a
# Array.try_convert(obj) # => TypeError: can't convert Object to Array (Object#to_ary gives String...

# 9.2.2
