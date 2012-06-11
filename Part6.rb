class CartesianProduct
  include Enumerable
  
  def initialize(a,b)
    @values = []
    @values = a.product(b) unless b.empty?
  end
  
  def each(&block)
    @values.each {|v| yield v}
  end
  
end
