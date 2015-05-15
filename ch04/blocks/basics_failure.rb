def a_method(a, b)
  a + yield(a, b)
end

res = a_method(1, 2) { |x, y| (x + y) * 3 }
puts res

res = a_method("foo", "bar") { |x, y| (x + y) * 3 }
puts res
