require_relative 'datasource'

class Computer
  def initialize(computer_id, datasource)
    @id         = computer_id
    @datasource = datasource
    datasource.methods.grep(/^get_(.*)_info$/) { Computer.define_component $1 }
  end

  def self.define_component(name)
    define_method(name) do
      info   = @datasource.send "get_#{name}_info", @id
      price  = @datasource.send "get_#{name}_price", @id
      result = "#{name.capitalize}: #{info} (#{price})"
      return "* #{result}" if price >= 100
      result
    end
  end
end

computer = Computer.new(42, Datasource.new)

puts computer.mouse
puts computer.cpu
puts computer.keyboard