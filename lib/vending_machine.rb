class VendingMachine

  def initialize
    @tally = 0
  end

  def insert(coin)
    if coin == 'nickel'
      @tally = 5
    else
      @tally = 10
    end
  end

  def display_tally
    @tally
  end

end
