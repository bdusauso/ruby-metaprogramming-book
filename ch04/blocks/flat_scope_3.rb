my_var = "Success"

MyClass = Class.new do
  # Now we can print my_var here
  puts "#{my_var} in class definition"

  define_method :my_method do
    puts "#{my_var} in method definition"
  end
end

MyClass.new.my_method