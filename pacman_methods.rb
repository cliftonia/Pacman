require_relative 'pacman'

def x_axis
  loop do
    puts 'PLESE PROVIDE AN X COORDINATE BETWEEN 0 - 5'
    @xaxis = gets.chomp.to_i

    break if @xaxis.between?(0, 5)

    puts 'NUMBER INVALID'
  end
end

def y_axis
  loop do
    puts 'PLEASE PROVIDE AN Y COORDINATE BETWEEN 0 - 5'
    @yaxis = gets.chomp.to_i

    break if @yaxis.between?(0, 5)

    puts 'NUMBER INVALID'
  end
end

def facing_direction
  loop do
    puts 'PLEASE PROVIDE WHICH DIRECTION YOU WANT PACMAN TO FACE'
    puts 'NORTH'
    puts 'SOUTH'
    puts 'EAST'
    puts 'WEST'

    @facing = gets.chomp.upcase

    break if @facing == 'NORTH' || @facing == 'SOUTH' || @facing == 'EAST' || @facing == 'WEST'

    puts 'INVALID DIRECTION'
  end
end

