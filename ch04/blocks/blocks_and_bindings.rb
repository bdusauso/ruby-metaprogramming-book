def my_method
  x = "Goodbye"
  yield("cruel")
end

x = "Hello"
res = my_method { |y| "#{x}, #{y} world" }
puts res