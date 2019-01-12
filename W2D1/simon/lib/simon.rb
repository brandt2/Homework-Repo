class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
      system("clear")
    end
  end

  def show_sequence
    add_random_color
    seq.each_with_index do |color, idx|
      puts "#{idx + 1}. #{color}"
      # Comment sleep in to play the game
      # sleep(1)
      system("clear")
    end
  end

  def require_sequence
    seq.each do |color|
      puts "Please repeat the color one at a time (Ex. red): "
      my_color = gets.chomp
      @game_over = true if color != my_color
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "You have passed round #{sequence_length}!"
  end

  def game_over_message
    puts "Game Over! You got to round #{sequence_length}!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

# Simon.new.play