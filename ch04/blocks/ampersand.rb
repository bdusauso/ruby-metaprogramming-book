def math(a, b)
  yield(a, b)
end

def do_math(a, b, &op)
  math(a, b, &op)
end

res = do_math(2, 3) { |x, y| x * y }
puts res

def my_method(&proc)
  proc
end

p = my_method { |name| "Hello, #{name}" }
puts p.class
puts p.call("Bill")