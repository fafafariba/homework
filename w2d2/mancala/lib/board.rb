class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14) { [] }
    place_stones
  end

  def place_stones
    @cups.map.with_index do |cup, i|
      unless i == 6 || i == 13
        4.times { cup << :stone }
      end
    end
  end

  def valid_move?(start_pos)
    if @cups[start_pos].nil? || @cups[start_pos].empty?
      raise RangeError.new("Invalid starting cup")
    end
  end

  def make_move(start_pos, current_player_name)

    if current_player_name == @name1
      skip_cup = @cups[6]
    else
      skip_cup = @cups[13]
    end

    stone_count = @cups[start_pos].count

    #use while and i to use final i value later
    i = 0
    until i == stone_count #why > ?

      # unless @cups[start_pos + 1] == @cups[13]
        @cups[start_pos + i] << :stone
        i += 1
      # end

    end
    end_pos_idx = start_pos + i
    @cups[start_pos] = []

    render

    if @cups[end_pos_idx].count == 1
      switch
    elsif @cups[end_pos_idx].count < 2
      return end_pos_idx
    else
      next_turn(end_pos_idx)
    end
  end

  def next_turn(ending_cup_idx)

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?(&:empty?) || @cups[7..12].all?(&:empty?)
  end

  def winner
  end
end

board = Board.new("F", "M")
p board.make_move(0, "Erica")
