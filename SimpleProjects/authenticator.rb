# Text lecture: Authenticator project code
# users array where username and password are stored
users = [
  { username: 'mashrur', password: 'password1' },
  { username: 'jack', password: 'password2' },
  { username: 'arya', password: 'password3' },
  { username: 'jonshow', password: 'password4' },
  { username: 'heisenberg', password: 'password5' }
]

# authentication method to check and verify if username/password combination exists
def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    return user_record if user_record[:username] == username && user_record[:password] == password
  end
  'Credentials were not correct'
end

# program execution flow
puts 'Welcome to the authenticator'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare password'
puts 'If password is correct, you will get back the user object'

attempts = 1
while attempts < 4
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts 'Press n to quit or any other key to continue: '
  input = gets.chomp.downcase
  break if input == 'n'

  attempts += 1
end
puts 'You have exceeded the number of attempts' if attempts == 4

# =================My Code================
#     users = [
#           { username: "mashrur", password: "password1" },
#           { username: "jack", password: "password2" },
#           { username: "arya", password: "password3" },
#           { username: "jonshow", password: "password4" },
#           { username: "heisenberg", password: "password5" }
#         ]

# puts "Welcome to Authentication!"
# 25.times {print "-"}
# puts

# def authentication(uname,pwd,users)
#     users.each do |user|
#         if user[:username] == uname && user[:password] == pwd
#             return "Authentication Success!"
#             break
#         else
#             return "Authentication Failed\n"+"Re enter username and password"
#             break

#         end
#     end
# end

# attempt = 1
# while attempt<4
#     puts "you have #{4-attempt} attempts"
#     puts "Enter username:"
#     username = gets.chomp
#     puts "Enter password:"
#     password = gets.chomp
#     puts
#     auth = authentication(username,password,users)
#     puts auth
#     puts
#     puts "press n to quit"
#     input = gets.chomp
#     if input=="n"
#             break
#     end
#     attempt+=1
# end
