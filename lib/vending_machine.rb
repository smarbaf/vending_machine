class VendingMachine

  def initialize
    # @tally = 0

  end

  def insert(coin)
    if coin == 'nickel'
      @tally = 5
    elsif coin == 'dime'
      @tally = 10
    elsif coin == 'quarter'
      @tally = 25
    else
      fail 'Insert Coin'
    end
  end

  def display_tally
    fail 'Insert Coin' unless @tally
    @tally
  end

end
