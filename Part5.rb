class Class
def attr_accessor_with_history(attr_name)
attr_name=attr_name.to_s
attr_reader attr_name
attr_reader attr_name+"_history"
class_eval %Q"
def #{attr_name}=(value)
  if !defined? @#{attr_name}_history
  @#{attr_name}_history = [@#{attr_name}]
  end
  @#{attr_name}=value
  @#{attr_name}_history<<value
end"
end
end

class Numeric
  @@currencies = {'dollar'=>1, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  def in(currency)
  singular_currency = currency.to_s.gsub( /s$/, '')
  self / @@currencies[singular_currency]
  end
end

class String
  
  def palindrome?
    
    self.gsub!(/\W+/, '').downcase!
    
    self == self.reverse
    
  end
  
end

module Enumerable
  
  def palindrome?
    self.to_a == self.to_a.reverse
  end
  
end
