# Algorithm / psuedo code
# 1. Display a welcome message and get user to input there Name
# 2. retrieve user variable and store it for later use
# 3. display hello username and provide further instructions
# 4. get the user to choose one of the menu items
# 5. based on user selection
#   if the user selected 'D' ask the user how much they would like to deposit
#   if the user selected 'W' ask the user how much they would like to withdraw
#   if the user selected 'B' show the balance


# flowchart:



puts "Welcome to the Coder Bank, Please enter your name:"
name = gets.chomp

#using $balance adds global variable to the amout changing the balance from 0 to the appropriate balance.  
$balance = 0

loop do
puts "Hello #{name}, please choose from the options below
D- Deposit
W- Withdraw
B- Show Balance
"

  user_input = gets.chomp.capitalize

  # conditional statement : if else logic to take different path based on whether the condition was evaluated to true
if user_input =='D'
  puts "How much would you like to Deposit?"
  amount = gets.chomp.to_i
 if amount.positive?
    $balance += amount
    puts "Thanks, you have successfully deposited $#{amount}."
  else
    puts "ERROR: Invalid deposit amount. Please enter amount > 0."
 end
elsif user_input == 'W'
  puts "How much would you like to withdraw?"
  amount = gets.chomp.to_i
   if amount.positive? 
     if amount <= $balance
     $balance -= amount 
        puts "You withdrew $#{amount}. Take the cash."
      else
        puts "ERROR: Insufficient Balance."
   end
   else
     puts "ERROR: Invalid withdrawal amount. Please enter amount > 0."
   end
    elsif user_input =='B'
  puts "Your balance is $#{$balance}"
else
  puts "ERROR: INVALID INPUT"
end

puts "\nWould you like to make another transaction Y/N?"
  another_transaction = gets.chomp.capitalize
  break if another_transaction == 'N'
end

puts "Thank you have a nice day!"
