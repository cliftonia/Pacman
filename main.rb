require_relative 'pacman'

puts 'WELCOME TO PACMAN'
puts 'PACMAN RESIDES ON A 5 X 5 BOARD'
puts 'HE CAN FACE NORTH, SOUTH, EAST AND WEST'

loop do
  puts 'TO BEGIN PLESE PROVIDE AN X COORDINATE BETWEEN 0 - 5'
  @x = gets.chomp.to_i

  if @x.between?(0, 5)
    break
  else
    puts 'NUMBER INVALID'
  end
end

loop do
  puts 'PLEASE PROVIDE AN Y COORDINATE BETWEEN 0 - 5'
  @y = gets.chomp.to_i

  if @y.between?(0, 5)
    break
  else
    puts 'NUMBER INVALID'
  end
end

loop do
  puts 'PLEASE PROVIDE WHICH DIRECTION YOU WANT PACMAN TO FACE'
  puts 'NORTH'
  puts 'SOUTH'
  puts 'EAST'
  puts 'WEST'

  @f = gets.chomp.upcase

  if @f == 'NORTH' || @f == 'SOUTH' || @f == 'EAST' || @f == 'WEST'
    break
  else
    puts 'INVALID DIRECTION'
  end
end

pacman = Pacman.new(@x, @y, @f)

puts 'TO BEGIN PLEASE TYPE: PLACE'
puts 'MOVE PACMAN BY TYPING MOVE'
puts 'YOU CAN CHANGE DIRECTION BY EITHER TYPING: LEFT OR RIGHT'
puts 'TO SEE WHERE YOU ARE ON THE BOARD TYPE: REPORT'
puts 'TO QUIT TYPE: EXIT'

loop do
  command = gets.chomp.upcase

  if command == 'PLACE'
    puts pacman.report
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
