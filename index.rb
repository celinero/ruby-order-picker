# require_relative "methods"
require_relative "group"
# require_relative "command_line_args"

#handling args in file
if ARGV.length > 0
  flag, *rest = ARGV
  ARGV.clear

  case flag
  when "help"
    puts "See further documentation in readme"
    exit
  when "info"
      puts "This program is using Ruby version: #{RUBY_VERSION}"
  when "path"
    group_instance = Group.new(rest[1] = "Default Group", rest[0])
  else
    puts "Invalid Argument, see readme for options"
    exit
  end
end

group_instance = Group.new("Melbourne Flextrack","./groups?melb-fx1.txt")

while true 
  group_size = group_instance.names_array.length
  output_group_size(group_size) # or group_length = group.length then output_group_size(group_length)
  
  case menu_input_select
  when 1
    puts "Enter name to add"
    name_input = gets.chomp
    group_instance.add_name(name_input)
    puts "Added #{name_input} to group"

  when 2
    puts "Random group output:"
    random_order_loop_running = true
    while random_order_loop_running
      group_instance.output_random_array

      puts "Press 1 to go back"
      puts "Press 2 to quit"
      puts "press any other ket to regenerate order of random group"
      choice = gets.chomp.to_i
      if choice == 1
        random_order_loop_running = false
      elsif choice == 2
        quit_program(group_instance)
      else
        wait_clear(1)
      end
    end

  when 3 
    puts "The random user is #{group_instance.names_array.sample.capitalize}"

  when 4
    quit_program(group_instance)
  else
    puts "Invalid input, please try again"
  end
  wait_clear(1.5)
end

