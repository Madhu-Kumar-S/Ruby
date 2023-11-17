class GetterSetterMethods
  # instance var
  @msg

  # setter/mutator method

  # getter/accesor method
  attr_accessor :msg
end

gsm = GetterSetterMethods.new
# assigning value to setter method
gsm.msg = 'This is getter setter methods'
# calling getter method
puts gsm.msg
