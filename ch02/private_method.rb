class MyClass
  def public_method
    # This doesn't work
    # self.private_method

    # This works
    private_method
  end

  private

  def private_method; end
end

obj = MyClass.new
obj.public_method

# This doesn't work since the receiver is explicit
# obj.private_method