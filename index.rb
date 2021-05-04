group = []

while true 
  puts "press 1 to add a member to the group"
  puts "Press 2 display a random group"
  puts "Press 3 to quit"

    #take input from user
  menu_input = gets.chomp.to_i


  case menu_input

  when 1
    puts "Enter name:"
    name = gets.chomp
    group.push(name)

  when 2
    puts "Random group output:"
    #TODO - Output random group

  when 3
    #TODO - Check they want to quit
    break

  else
    puts "Invalid input, please try again"
  end
  sleep(1)
  system "clear"
end

puts "Goodbye, Thanks for visiting"