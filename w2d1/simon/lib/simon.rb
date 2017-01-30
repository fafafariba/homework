class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = seq.length
    @game_over = false
  end

  def play
    until game_over
      take_turn
    end

    game_over_message
    puts "Would you like to play again?"
    input = gets.chomp

    if input == "yes" || input == "YES" || input == "Yes"
      reset_game
    end
  end

  def take_turn
    add_random_color
    show_sequence
    sleep(5)
    require_sequence
  end

  def show_sequence
    seq.each do |color|
      puts color
      sleep(2)
    end
  end

  def require_sequence
    puts "Replicate the sequence i.e. r, b, g, y"
    input = gets.chomp
    answer = convert_seq(input)
    if answer == seq
      round_success_message
    else
      @game_over = true
    end
  end

  def convert_seq(input)
    answer= []
    input.each do |el|
      if /[a-z]/.include?(el.downcase)
        answer << el
      end
    end
    answer.map do |char|
      return "red" if char == "r"
      return "blue" if char == "b"
      return "green" if char == "g"
      return "yellow" if char == "y"
    end
    answer
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "YAY YOU GOT IT"
  end

  def game_over_message
    puts "GAME OVER"
  end

  def reset_game
    Simon.new.play
  end
end
