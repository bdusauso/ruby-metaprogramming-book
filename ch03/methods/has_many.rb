module ActiveRecord
  class Base
    def self.has_many(name)
      define_method("#{name}s") { puts "In method #{name}s" }
    end
  end
end

class MyModel < ActiveRecord::Base
  has_many :foo
  has_many :bar
end

obj = MyModel.new
puts obj.foos
puts obj.bars