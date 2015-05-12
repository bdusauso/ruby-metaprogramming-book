module MyModule
  def hello
    puts "Hello module ..."
  end
end

class MyClass
  include MyModule
end

obj = MyClass.new
obj.hello