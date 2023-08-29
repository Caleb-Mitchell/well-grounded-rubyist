# 9.0

my_array = [1,2,3,4,5]



# 9.1
hash = { red: "ruby", white: "diamond", green: "emerald" }
hash.each_with_index {|(key,value),i|
puts "Pair #{i} is: #{key}/#{value}"
}

Pair 0 is: red/ruby
Pair 1 is: white/diamond
Pair 2 is: green/emerald
