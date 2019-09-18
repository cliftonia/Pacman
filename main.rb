require 'pry'

require_relative 'pacman'
require_relative 'pacman_methods'

pacman = Pacman.new(0, 0, 'SOUTH')

puts 'WELCOME TO PACMAN'
puts 'PACMAN RESIDES ON A 5 X 5 BOARD'
puts 'HE CAN FACE NORTH, SOUTH, EAST AND WEST'

puts 'TO BEGIN PLEASE TYPE PLACE'

loop do
  command = gets.chomp.upcase

  if command == 'PLACE'
    x_axis
    y_axis
    facing_direction
    pacman.place(@xaxis, @yaxis, @facing)
    puts pacman.report
    puts 'YOUE CAN MOVE PACMAN BY TYPING MOVE'
    puts 'YOU CAN CHANGE DIRECTION BY TYPING LEFT OR RIGHT'
    puts 'TO SEE WHERE YOU ARE ON THE BOARD TYPE: REPORT'
    puts 'TO QUIT TYPE: EXIT'
  elsif command == 'MOVE'
    puts "PACMAN MOVED TO POSTION: #{pacman.move}"
  elsif command == 'LEFT'
    puts "PACMAN IS NOW FACING #{pacman.left}"
  elsif command == 'RIGHT'
    puts "PACMAN IS NOW FACING #{pacman.right}"
  elsif command == 'REPORT'
    puts pacman.report
  elsif command == 'EXIT'
    break
  end
end
