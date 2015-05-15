class MyClass
  def initialize
    @v = 1
  end

  def v
    @v
  end
end

obj = MyClass.new

obj.instance_eval do
  puts self
  puts @v
end

v = 2
obj.instance_eval do
  @v = v
end

puts obj.v