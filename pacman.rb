require 'pry'

class Pacman
  def initialize(x, y, f)
    @pacman = {
      "@x" => x,
      "@y" => y,
      "@f" => f.upcase
    }
  end

  def place(x,y,f)
    @pacman["@x"] = x
    @pacman["@y"] = y
    @pacman["@f"] = f
  end 

  def move
    if @pacman['@f'] == "NORTH" && @pacman['@y'] < 5
      @pacman['@y'] += 1
    elsif @pacman['@f'] == "SOUTH" && @pacman['@y'] > 0
       @pacman['@y'] -= 1
    elsif @pacman['@f'] == "EAST" && @pacman['@x'] < 5
      @pacman['@x'] += 1
    elsif @pacman['@f'] == "WEST" && @pacman['@x'] > 0
      @pacman['@x'] -= 1
    else    
      return "YOU CANT'T MOVE ANY FURTHER"
    end 
  end 

  def left
    if @pacman['@f'] == 'NORTH'
      @pacman['@f'] = "WEST"
    elsif @pacman['@f'] == "WEST"
      @pacman['@f'] = "SOUTH"
    elsif @pacman['@f'] == "SOUTH"
      @pacman['@f'] = "EAST"
    elsif @pacman['@f'] == "EAST"
      @pacman['@f'] = "NORTH"
    end
  end 

  def right
    if @pacman['@f'] == 'NORTH'
      @pacman['@f'] = "EAST"
    elsif @pacman['@f'] == "EAST"
      @pacman['@f'] = "SOUTH"
    elsif @pacman['@f'] == "SOUTH"
      @pacman['@f'] = "WEST"
    elsif @pacman['@f'] == "WEST"
      @pacman['@f'] = "NORTH"
    end
  end 

  def report
    value = []
    @pacman.each do |k, v|
       value.push(v)
    end 

    return value.join(', ')
  end 

end

# puts "WELCOME TO PACMAN"
# puts "PACMAN RESIDES ON A 5 X 5 BOARD"
# puts "HE CAN FACE NORTH, SOUTH, EAST AND WEST"

# loop do
#   puts "TO BEGIN PLESE PROVIDE AN X COORDINATE BETWEEN 0 - 5"
#   @x = gets.chomp.to_i

#   if @x.between?(0,5)
#     break
#   else  
#     puts "NUMBER INVALID"
#   end 

# end 

# loop do
#   puts "PLEASE PROVIDE AN Y COORDINATE BETWEEN 0 - 5"
#   @y = gets.chomp.to_i

#   if @y.between?(0,5)
#     break
#   else  
#     puts "NUMBER INVALID"
#   end 

# end 

# loop do 
#   puts "PLEASE PROVIDE WHICH DIRECTION YOU WANT PACMAN TO FACE"
#   puts 'NORTH'
#   puts 'SOUTH'
#   puts 'EAST'
#   puts 'WEST'

#   @f = gets.chomp.upcase

#   if @f == "NORTH" || @f == "SOUTH" || @f == "EAST" || @f == "WEST"
#     break
#   else  
#     puts "INVALID DIRECTION"
#   end
  
# end 

# pacman = Pacman.new(@x, @y, @f)

# puts "TO BEGIN PLEASE TYPE: PLACE"
# puts "MOVE PACMAN BY TYPING MOVE"
# puts "YOU CAN CHANGE DIRECTION BY EITHER TYPING: LEFT OR RIGHT"
# puts "TO SEE WHERE YOU ARE ON THE BOARD TYPE: REPORT"
# puts "TO QUIT TYPE: EXIT"

# loop do
#   command = gets.chomp.upcase

#   if command == "PLACE"
#     puts pacman.report
#   elsif command == 'MOVE'
#     puts "PACMAN MOVED TO POSTION: #{pacman.move}"
#   elsif command == 'LEFT'
#     puts "PACMAN IS NOW FACING #{pacman.left}"
#   elsif command == 'RIGHT'
#     puts "PACMAN IS NOW FACING #{pacman.right}"
#   elsif command == 'REPORT'
#     puts pacman.report
#   elsif command == 'EXIT'
#     break
#   end 

#  end

binding.pry