# class User
#   attr_accessor :name, :email
#   def initialize(name, email)
#     @name = name
#     @email = email
#   end
#   def run
#     puts "Hey I'm running"
#   end
#   def self.identify_yourself
#     puts "Hey I am a class method"
#   end
# end
# user = User.new("mashrur", "mashrur@example.com")
# # to run instance methods
# user.run
# # to run this class method you don't need an instance of user
# # you can directly call the class User
# User.identify_youself

class User
  # instance variable
  @name
  @email

  def to_s
    puts 'Default method created and called when object is intantiated'
  end

  # constructor
  def initialize(name, email)
    @name = name
    @email = email
  end

  # method
  def display
    puts "Name = #{@name}\nEmail = #{@email}"
  end

  def self.display_msg
    puts 'This is User method'
  end
end

# object creation
user = User.new('ruby', 'ruby@programming.com')
puts user
# calling method
user.display
# calling class method
User.display_msg
