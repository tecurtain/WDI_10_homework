# This method greets the user on start up and request their name
# It returns their name

def greeting

  puts "Hello!  Please type your name: "
  name = gets
  puts "\n" + "It is nice to meet you #{name}"
  puts "\n" + "I'm Crappy Cal 5000.  I can add, subtract, multiply, divide, and find exponents."

  name

end

# This method ask the user what type of calculation they would like to perform
# It returns the operation or an error for erroneous entry
def request_calculation_type

  puts "\n" + "Type 1 to add, 2 to subtract, 3 to multiply, 4 to divide two numbers, or 5 to find a the given exponent of a specific value: "
  operation_selection = gets.to_i

  if operation_selection == 1
    "add"
  elsif operation_selection == 2
    "subtract"
  elsif operation_selection == 3
    "multiply"
  elsif operation_selection == 4
    "divide"
  elsif operation_selection == 5
    "exponent"
  else
    "error"

  end

end

# This method performs the requested calculation
# It returns the result of the calculation
def calculate_answer(operator, a, b)

  if operator == "add"
    a + b
  elsif operator == "subtract"
    a - b
  elsif operator == "multiply"
    a * b
  elsif operator == "divide"
    a / b
  elsif operator == "exponent"
    a**b
  end

  # Math.sqrt(5)

end

name = greeting
run_calculator = 1

while run_calculator == 1

  current_calculation = request_calculation_type()

  if current_calculation == "error"

    puts "\n" + "I do not understand this type of calculation... Can we try again?"

  else
    puts "\n" + "What is the first number you would you like to #{current_calculation}: "
    first_number = gets.to_i
    puts "\n" + "What is the second number you would like to #{current_calculation}: "
    second_number = gets.to_i

    answer = calculate_answer(current_calculation, first_number, second_number)

    puts "\n" + "The answer is #{answer}"
    puts "\n" + "Type 1 to run another calculation or anything else to end: "
    run_calculator = gets.to_i

    if run_calculator != 1

      puts "\n" + "We hope you've enjoyed your Crappy Cal 5000 experience!"

    end
  end
end
