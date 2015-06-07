class VendingMachine

  def initialize
    @tally = 0
    # coin_return = []
  end

  def insert(coin)
    if coin == 'nickel'
      @tally += 5
    elsif coin == 'dime'
      @tally += 10
    elsif coin == 'quarter'
      @tally += 25
    elsif coin == 'penny'
      puts "Invalid Coin"
      coin_return('penny')
    end
  end

  def display_tally
    return 'Insert Coin' unless @tally != 0
    @tally
  end

  def coin_return(coin)
    return(coin) unless coin != 'penny'
    if coin == 'nickel'
      @tally -= 5
    elsif coin == 'dime'
      @tally -= 10
    elsif coin == 'quarter'
      @tally -= 25
    else
    end
  end

  def select(product)

  end

  def product_selection
    if @tally >= 100
      return 'cola THANK YOU'
    else
      return 'PRICE $1.00'
    end
    if @tally >= 65
      return 'candy THANK YOU'
    else
      return 'PRICE $0.65'
    end
    if @tally >= 50
      return 'chips THANK YOU'
    else
      return 'PRICE $0.50'
    end
  end
end
