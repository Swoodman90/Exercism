module Chess
  RANKS = 1..8
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include? rank and FILES.include? file
  end

  def self.nick_name(first_name, last_name)
    first_name[0..1].upcase + last_name[-2..-1].upcase
  end

  def self.move_message(first_name, last_name, square)
    nickname = self.nick_name(first_name, last_name)
    valid = self.valid_square?(square[1].to_i, square[0])
    puts square[1] + ", " + square[0]
    puts square[1].class
    if valid
      "#{nickname} moved to #{square}"
    else
      "#{nickname} attempted to move to #{square}, but that is not a valid square"
    end
  end
end

puts Chess.move_message("Shane", "Woodman", "F4")
puts Chess.valid_square?(4, "F")
