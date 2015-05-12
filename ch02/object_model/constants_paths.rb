module M
  class C
    X = 'a constant'
  end

  puts C::X
end

puts M::C::X

# Declaring a constant at root level
Y = 'a root constant'

# You can declare constants in different levels
module M
  Y = 'a constant in M'
  puts Y
  puts ::Y
end

puts M.constants
puts Module.constants.include? :Object
puts Module.constants.include? :Module