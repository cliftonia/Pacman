class Pacman
  def initialize(xaxis, yaxis, facing)
    @pacman = {
      '@xaxis' => xaxis,
      '@yaxis' => yaxis,
      '@facing' => facing.upcase
    }
  end

  def place(xaxis, yaxis, facing)
    @pacman['@xaxis'] = xaxis
    @pacman['@yaxis'] = yaxis
    @pacman['@facing'] = facing.upcase
  end

  def move
    if @pacman['@facing'] == 'NORTH' && @pacman['@yaxis'] < 5
      @pacman['@yaxis'] += 1
    elsif @pacman['@facing'] == 'SOUTH' && (@pacman['@yaxis']).positive?
      @pacman['@yaxis'] -= 1
    elsif @pacman['@facing'] == 'EAST' && @pacman['@xaxis'] < 5
      @pacman['@xaxis'] += 1
    elsif @pacman['@facing'] == 'WEST' && (@pacman['@xaxis']).positive?
      @pacman['@xaxis'] -= 1
    else
      "YOU CAN'T MOVE ANY FURTHER"
    end
  end

  def left
    if @pacman['@facing'] == 'NORTH'
      @pacman['@facing'] = 'WEST'
    elsif @pacman['@facing'] == 'WEST'
      @pacman['@facing'] = 'SOUTH'
    elsif @pacman['@facing'] == 'SOUTH'
      @pacman['@facing'] = 'EAST'
    elsif @pacman['@facing'] == 'EAST'
      @pacman['@facing'] = 'NORTH'
    end
  end

  def right
    if @pacman['@facing'] == 'NORTH'
      @pacman['@facing'] = 'EAST'
    elsif @pacman['@facing'] == 'EAST'
      @pacman['@facing'] = 'SOUTH'
    elsif @pacman['@facing'] == 'SOUTH'
      @pacman['@facing'] = 'WEST'
    elsif @pacman['@facing'] == 'WEST'
      @pacman['@facing'] = 'NORTH'
    end
  end

  def report
    board_position = []
    @pacman.each do |_k, v|
      board_position.push(v)
    end

    board_position.join(', ')
  end
end

