require 'minitest/autorun'
require 'minitest/reporters' # optional
Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new) # optional

require_relative 'pacman'

class PacmanTest < Minitest::Test
  def test_provide_coordinates
    pacman = Pacman.new(0, 0, 'north')
    assert_equal '0, 0, NORTH', pacman.report
  end

  def test_left_method
    pacman = Pacman.new(1, 2, 'south')
    assert_equal 'EAST', pacman.left
  end

  def test_right_method
    pacman = Pacman.new(1, 2, 'east')
    assert_equal 'SOUTH', pacman.right
  end

  def test_going_outside_the_board_over_five
    pacman = Pacman.new(5, 5, 'east')
    assert_equal "YOU CAN'T MOVE ANY FURTHER", pacman.move
  end

  def test_going_outside_the_board_under_zero
    pacman = Pacman.new(0,0, 'west')
    assert_equal "YOU CAN'T MOVE ANY FURTHER", pacman.move
  end 

  def test_being_able_to_move
    pacman = Pacman.new(0, 0, 'east')
    assert_equal 1, pacman.move
  end

  def test_place_method
    pacman = Pacman.new(1, 4, 'south')
    pacman.place(2, 5, 'north')
    assert_equal '2, 5, NORTH', pacman.report
  end
end
