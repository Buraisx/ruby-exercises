# QUESTION 1
puts "Q1. Enter a number"
number = gets.to_i
if number>100
	puts "That's a big number!"
else
	puts "Why not dream a little bigger?"
end

# QUESTION 2
puts "\nQ2. Enter your age"
your_age = gets.to_i
my_age = 22
if your_age< my_age
	puts "I am older than you by #{my_age-your_age} years."
elsif your_age>my_age
	puts "You are older than me by #{your_age-my_age} years."
else
	puts "We are the same age."
end
# AGE IS GREATER THAN 105
if your_age.to_i >105
	puts "I don't believe you."
end

# QUESTION 3
puts "\nQ3/4. Enter your name"
your_name = gets.chomp
my_name = "william"
if your_name==my_name
	puts "We have the same name!"
else
	puts "We don't have the same name."
end

# QUESTION 4
if your_name.length.to_i > 10
	puts "hi, #{your_name}"
elsif your_name.length.to_i<10
	puts "hello, #{your_name}"
else
	puts "hey, #{your_name}"
end

# QUESTION 5
puts "Q5. Enter another number"
secret_number = 69
user_number = gets.to_i
if user_number == secret_number
	puts "You win!"
elsif user_number+1 == secret_number||user_number-1==secret_number
	puts "So close!"
else
	puts "Try again."
end
