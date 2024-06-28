module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    if ship_identifier.to_s[0..2] == "OIL" or ship_identifier.to_s[0..2] == "GAS"
      :A
    else
      :B
    end
  end
end
