class VendingMachine

  def initialize
    @tally = 0
  end

  def insert(coin)
    if coin == 'nickel'
      @tally += 5
    elsif coin == 'dime'
      @tally += 10
    elsif coin == 'quarter'
      @tally += 25
    else
      # @tally = 40
    end
  end

  def display_tally
    fail 'Insert Coin' unless @tally != 0
    @tally
  end

  def display_total


  end
end
