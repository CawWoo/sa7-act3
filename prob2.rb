#Text based game score tracker

points = 0
rooms = [5, 10, 15]
prompt = "Choose a room (1-3) to enter or 'exit' to end the game: "

puts "Welcome to the Adventure Game!"
puts "You have 0 points."
puts "\n"

print prompt
input = gets.chomp()
while input != "exit" do
  i = input.to_i

  if i > 0 and i < 4 then
    earned = rooms[i - 1]
    points += earned
    puts "You entered room #{input} and earned #{earned} points."

  else
    puts "Invalid room. Try again."

  end
  puts "\n"
  print prompt
  input = gets.chomp()

end
puts "Game over! You collected a total of #{points} points."
