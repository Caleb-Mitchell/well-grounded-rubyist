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
# hash.each_with_index do |(key, value), idx|
#   puts "Pair #{idx} is: #{key}/#{value}"
# end

# arr = [1, 2]
# (one, two) = arr
# p one
# p two

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

# array = [[:name, "Joe", 30], [:age, 10], [:favorite_color, "blue"]]
# p array.to_h

# 9.2.1

# p([1, 2, 3].interest([3, 4, 5]))

# a = Array.new
# p a
# p Array.new(3)
# p Array.new(3, "abc")
# p Array.new(3) { |i| 10 * (i + 1) }

# a = Array.new(3, "abc")
# p a
# a[0] += "def"
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

# a = %q("It was the 'best' of times")
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

# p self.class
# string = "A string"
# p string.respond_to?(:to_ary) # => false
# p string.respond_to?(:to_a) # => false
# p Array(string) # => ["A string"]
# p arr = [string]
# p arr = Array.new(1, "A string")

# def string.to_a
#   chars
# end
# Array(string) # => ["A", " ", "s", "t", "r", "i", "n", "g"]

# p %w(Joe Leo III) # => ["Joe", "Leo", "III"]
# %w{ Joe Leo III } # => ["Joe", "Leo", "III"]
# p %w(David\ A.\ Black is a Rubyist.) # => ["David A. Black", "is", "a", "Rubyist."]
# what's the difference with below?
# p %W(Joe is #{2018 - 1981} years old.) # => ["Joe", "is", "37", "years", "old."]

# p %i(a b c) # => [:a, :b, :c]
# d = "David"
# p %i('#{d}') # => [:"\"David\""]
# p %I("#{d}") # => [:"\"David\""]

# obj = Object.new
# p Array.try_convert(obj) # => nil
# def obj.to_ary
#   [1, 2, 3]
# end # => :to_ary
# p Array.try_convert(obj) # => [1, 2, 3]
# def obj.to_ary
#   "Not an array!"
# end # => :to_a
# Array.try_convert(obj) # => TypeError: can't convert Object to Array (Object#to_ary gives String...

# 9.2.2

# a = []
# a[0] = "first"
# # a.[]=(1, "first")
# p a

# a = [1, 2, 3, 4, 5]
# p a[2]

# a = %w(red orange yellow purple gray indigo violet) # => ["red", "orange", "yellow", "purple", "gray", "indigo", "violet"]
# p a[3, 2] # => ["purple", "gray"]
# a[3, 2] = "green", "blue" # => ["green", "blue"]
# p a # => ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

# a = %w(red orange yellow purple gray indigo violet)
# p a # => ["red", "orange", "yellow", "purple", "gray", "indigo", "violet"]
# p a[3..5] # => ["purple", "gray", "indigo"]
# a[1..2] = "green", "blue" # => ["green", "blue"]
# p a # => ["red", "green", "blue", "purple", "gray", "indigo", "violet"]

# array = %w(the dog ate the cat)
# articles = array.values_at(0, 3, 4, 5)
# p articles # => ["the", "the"]

# arr = [[1], 2, 3, [4, 5]]
# p arr[0] # => [1]
# p arr[3][0] # => 4
# p arr.dig(3, 0) # => 4

# p [["Joe", %w(loves Lucy,), "his"], "adorable", ["daughter"]].fetch(6) # => "Lucy,"

# a = [1, 2, 3, 4]
# a.unshift(0)
# p a # => [0, 1, 2, 3, 4]

# a = [1, 2, 3, 4]
# a << 5 << 6
# p a # => [1, 2, 3, 4, 5]

# a = [1, 2, 3, 4]
# a.append(5)
# p a # => [1, 2, 3, 4, 5]

# a = [1, 2, 3, 4, 5]
# p a.pop # => 5
# p a # => [1, 2, 3, 4]
# p a.shift # => 1
# p a # => [2, 3, 4]

a = %w(one two three four five)
p a.pop(2) # => ["four", "five"]
# p a # => ["one", "two", "three"]
p a.shift(1) # => ["one", "two"]
# p a # => ["three"]

# 9.2.3

# p [1, 2, 3].concat([4, 5, 6]) # => [1, 2, 3, 4, 5, 6]
# p [1, 2, 3].push([4, 5, 6]) # => [1, 2, 3, [4, 5, 6]]

# a = [1,2,3]
# b = a + [4,5,6]
# p a # => [1, 2, 3]

# a = [1,2,3]
# a.replace([4,5,6])
# p a # => [4, 5, 6]

# a = [1, 2, 3]
# p a.object_id # => 60
# a = [4, 5, 6]
# p a.object_id # => 80

# a = [1, 2, 3]
# p a.object_id # => 60
# b = a
# p b.object_id # => 60
