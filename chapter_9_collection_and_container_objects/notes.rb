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

# a = %w(one two three four five)
# p a.pop(2) # => ["four", "five"]
# p a # => ["one", "two", "three"]
# p a.shift(1) # => ["one", "two"]
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

# 9.2.4

# array = [1, 2, [3, 4, [5], [6, [7, 8]]]]
# p array.flatten
# p array.flatten(1)
# p array.flatten(2)
# p array.flatten(22)

# iterate over each element
# if not an array:
#     push to new array
# if an array:
#     iterate over elements in that array:
#     push each to new array

# p [1, 2, 3, 4].reverse

# p ["abc", "def", 123].join(", ")

# p a = %w(one two three)
# p(a * "-")

# p [1, 2, 3, 1, 4, 3, 5, 1].uniq

# zip_codes = ["06511", "08902", "08902", nil, "10027",
#              "08902", nil, "06511"]
# p zip_codes.compact

# p [1, 2, 3, 1, 4, 3, 5, 1].size
# p [1, 2, 3, 1, 4, 3, 5, 1].empty?
# p [1, 2, 3, 1, 4, 3, 5, 1].include?(7)
# p [1, 2, 3, 1, 4, 3, 5, 1].count(1)

# p [1, 2, 3, 1, 4, 3, 5, 1].slice(0, 3)
# p [1, 2, 3, 1, 4, 3, 5, 1].take(100)
# p [1, 2, 3, 1, 4, 3, 5, 1].first(100)

# p [1, 2, 3, 1, 4, 3, 5, 1].last(3)
# p [1, 2, 3, 1, 4, 3, 5, 1].shuffle(2)

# array_1 = (1..5000).to_a
#
# time_1 = Time.now
# 500.times { array_1.shuffle.first }
# p time_2 = (Time.now - time_1) * 1000
#
# time_3 = Time.now
# 500.times { array_1.sample }
# p time_4 = (Time.now - time_3) * 1000

# 9.3

# state_hash = { "Connecticut" => "CT",
#                "Delaware" => "DE",
#                "New Jersey" => "NJ",
#                "Virginia" => "VA" }
# print "Enter the name of a state: "
# state = gets.chomp
# abbr = state_hash[state]
# puts "The abbreviation is #{abbr}."

# state_hash = { "Connecticut" => "CT",
#                "Delaware" => "DE",
#                "New Jersey" => "NJ",
#                "Virginia" => "VA" }
# state_hash.each { |(state, abb)| puts "#{state}: #{abb}" }


# h = {}
# p h
# h = Hash.new(5)
# puts h[:a]
# pp h.methods.sort
# p h.itself

# default_value = "Default"
# my_hash = Hash.new(default_value)
#
# # Later, you can access the default value using the `default_value` variable.
# puts default_value

# arr = [1, 2]
# arr_2 = [1, 2]
# p arr.object_id
# p arr_2.object_id
# hash = { arr => "arr_1", arr_2 => "arr_2" }
# p hash

# hash = Hash.new
# hash[arr] = "arr_1"
# hash[arr_2] = "arr_2"
# p hash

# h = Hash["Connecticut", "CT", "Delaware", "DE"]
# p h

# h = [[1,2], [3,4], [5,6]].to_hash

# require "csv"
# source = "Name,Value\nfoo,0\nbar,1\nbaz,2\n"
# table = CSV.parse(source, headers: true)
# table.each {|row| p row.to_hash }

# h = Hash[[1, 2].to_hash]
# p h

# p h = Hash()
# p h = Hash(nil)
# p h = Hash([1, 2])
# single argument example?

# state_hash = { "Connecticut" => "CT",
#                "Delaware" => "DE",
#                "New Jersey" => "NJ",
#                "Virginia" => "VA" }

# state_hash.each { |(state, abb)| puts "#{state}: #{abb}" }

# state_hash["New York"] = "NY"
# state_hash["New York"] = "New York"
# pp state_hash
# state_hash.store([1, 2], "NY")
# p state_hash

# h = Hash.new
# h["a"] = 1
# h["a"] = 2
# puts h["a"]

# p conn_abbrev = state_hash["Connecticut"]
# p state_hash["what"]
# p conn_abbrev = state_hash.fetch("what")

# error_message = "Unknown state"
# p state_hash.fetch("Nebraska", error_message)

# state_hash = { "New Jersey" => "NJ",
#                "Connecticut" => "CT",
#                "Delaware" => "DE" }
# p two_states = state_hash.values_at("New Jersey", "Delaware")

# p state_hash.fetch_values("New Jersey", "Delaware")

# p (state_hash.fetch_values("New Jersey", "WYOMING") do |key|
#   "#{key} not found"
# end)

# p h = { foo: { bar: "baz" } }

# contacts = { john: {
#                phone: "555-1234",
#                email: "john@example.com"
#              },
#              eric: {
#                phone: "555-1235",
#                email: "eric@example.com"
#              } }
#
# p contacts.dig(:eric, :email)

# 9.3.3

# h = Hash.new
# p h # => {}
# p h["no such key!"] # => nil

# h = Hash.new(0)
# p h # => {}
# p h["no such key!"] # => 0

# h = Hash.new(0)
# p h
# p h.default
# p h["no such key!"] # => 0


# p h # => {}

# h = Hash.new {|hash,key| hash[key] = 0 }
# p h
# h["new key!"]
# p h

# 9.3.4

# h1 = { first: "Joe",
#        last: "Leo",
#        suffix: "III" }
# h2 = { suffix: "Jr." }
# h1.update(h2)
# puts h1[:suffix] # => "Jr."

# h1 = { first: "Joe",
#        last: "Leo",
#        suffix: "III" }
# h2 = { suffix: "Jr." }
# h3 = h1.merge(h2)
# p h1[:suffix] # => "III"
# p h3 # => {:first=>"Joe",:last=>"Leo",:suffix=>"Jr."}

# 9.3.5

# h = Hash[1,2,3,4,5,6]
# p h # => {1=>2, 3=>4, 5=>6}
# p h.keep_if {|k,v| k > 1 } # => {3=>4, 5=>6}
# p h

# p h.reject {|k,v| k > 1 } # => {1=>2}

# h = { street: "127th Street", apt: nil, borough: "Manhattan" }.compact
# p h

# h = { 1 => "one", 2 => "two" }
# p h.invert # => {"two"=>2, "one"=>1}

# h = { 1 => "one", 2 => "more than 1", 3 => "more than 1" }
# p h.invert # => {"one"=>1, "more than 1"=>3}

# h = {1 => "one", 2 => "two" }.clear
# p h # => {}

# h = { 1 => "one", 2 => "two", 3 => "three" }.replace({ 10 => "ten", 20 => "twenty"})
# p "hello".replace("hi")
# p h # => {10 => "ten", 20 => "twenty"}

# add_to_city_database("New York City",
#                      state: "New York",
#                      population: 7000000,
#                      nickname: "Big Apple")
# add_to_city_database("New York City", "New York", 7000000, "Big Apple")
#
# def add_to_city_database(name, info)
#   c = City.new
#   c.name = name
#   c.state = info[:state]
#   c.population = info[:population]
# # etc.
# end

# my_method { NY: "New York" }, 100, "another argument"
# my_method({ NY: "New York" }, 100, "another argument")

# def m(a:, b:)
#   p a,b
# end

# p m(a: 1, b: 2)
# => 1
# => 2
# => [1, 2]

# m #=> ArgumentError: missing keywords: a, b
# m(a: 1) # => ArgumentError: missing keyword: b

# def m(a: 1, b: 2)
#   p a,b
# end

# p m
# => 1
# => 2
# => [1, 2]

# m(b:10)
# => 10
# => 2
# => [10, 2]

# def m(a: 1, b: 2, **c)
#   p a,b,c
# end
#
# m(x: 1, y: 2)
# => 1
# => 2
# => {:x=>1, :y=>2}
# => [1, 2, {:x=>1, :y=>2}

# def m(x, y, *z, a: 1, b:, **c, &block)
#   p x,y,z,a,b,c
# end

# m(1,2,3,4,5,b:10,p:20,q:30)
# => 1
# => 2
# => [3, 4, 5]
# => 1
# => 10
# => {:p=>20, :q=>30}
