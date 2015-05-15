module Kernel
  def with(resource)
    begin
      yield(resource) if block_given?
    ensure
      resource.dispose
    end
  end
end