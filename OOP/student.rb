class Student
  # attr_accessor -> shortcut method when you need both attr_reader and attr_writer | allows to read + write together
  attr_accessor :id, :first_name, :last_name

  def initialize(firstname, lastname)
    @first_name = firstname
    @last_name = lastname
  end

  def to_s
    "Id: #{@id}\tFirst name: #{@first_name}\tLast name: #{@last_name}"
  end
end

mashrur = Student.new('Mashrur', 'Hossain')
john = Student.new('John', 'Doe')

# can modifiy the
mashrur.id = 1
john.id = 2

puts mashrur
puts john

mashrur.last_name = john.last_name
puts 'Mashrur is altered'
puts mashrur
