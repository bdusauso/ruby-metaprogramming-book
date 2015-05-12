require_relative 'datasource'

class Computer
  def initialize(computer_id, datasource)
    @id         = computer_id
    @datasource = datasource
  end

  def method_missing(name, *args)
    super if !@datasource.respond_to?("get_#{name}_info")
    info   = @datasource.send("get_#{name}_info", @id)
    price  = @datasource.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} (#{price})"
    return "* #{result}" if price >= 100
    result
  end

  def respond_to_missing?(method, include_private = false)
    @datasource.respond_to?("get_#{method}_info") || super
  end
end

computer = Computer.new(42, Datasource.new)

puts computer.mouse
puts computer.cpu
puts computer.keyboard

components = [:mouse, :display, :keyboard, :cpu]
components.each do |component|
  puts "Object class respond to #{component} ? #{Object.respond_to?(component)}"
end