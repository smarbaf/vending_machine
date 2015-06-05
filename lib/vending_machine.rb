class VendingMachine

  def initialize
    @tally = 0
  end

  def insert(coin)
    if coin == 'nickel'
      @tally = 5
    elsif coin == 'dime'
      @tally = 10
    else
      @tally = 25
    end
  end

  def display_tally
    @tally
  end

end
