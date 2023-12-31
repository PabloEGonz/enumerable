require_relative 'my_list'

# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 }) # Output: true
puts(list.all? { |e| e > 5 }) # Output: false

# Test #any?
puts(list.any? { |e| e == 2 }) # Output: true
puts(list.any? { |e| e == 5 }) # Output: false

# Test #filter
puts(list.filter(&:even?)) # Output: [2, 4]
