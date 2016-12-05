puts "What is your starting number?"
x = gets.chomp.to_i

puts "what is your ending number?"
y = gets.chomp.to_i

number = rand(x..y)
num_guesses = 0

puts "I'm thinking of a random number from #{x} to #{y}"
puts "Can you guess it?"

loop do
print "What is your guess? "
guess = gets.chomp.to_i
num_guesses += 1

unless guess == number
message = if guess > number
"Too high"
else
"Too low"
end
puts message
else
puts "You got it!"
puts "It took you #{num_guesses} guesses."
exit
end
end
