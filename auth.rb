users = [
    {username: "johnsmith", password: "coolbeans"},
    {username: "timburns", password: "password"},
    {username: "dandanny", password: "awesome"},
    {username: "gabedud", password: "sofaking"},
    {username: "jimhalpert", password: "pambeasly"}
]

def auth_user(uName, uPass, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == uName && user_record[:password] == uPass
            return user_record 
        end
    end
    "Credentials were not correct"
end

puts "Welcome to the authenticator"
25.times {print "-"}
puts
# puts "Username:"
# user = gets.chomp
# puts "Password:"
# pass = gets.chomp

attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password "
    password = gets.chomp
    authenticate = auth_user(username, password, users)
    puts authenticate
    puts "Press n to quite or any other key to continue:"
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4