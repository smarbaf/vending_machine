require 'capybara/rspec'
require 'vending_machine'

# As a vendor
# I want a vending machine that accepts coins
# So that I can collect money from the customer


feature 'A vending machine accepts coins' do
  scenario 'It accepts a range of coins' do
    vend = VendingMachine.new
    vend.insert('nickel')
    vend.insert('dime')
    vend.insert('quarter')
    expect(vend.display_tally).to eq(40)
    vend.insert('dime')
    vend.insert('quarter')
    expect(vend.display_tally).to eq(75)
  end

  scenario 'It knows when no coin is inserted' do
    vend = VendingMachine.new
    expect(vend.display_tally).to eq('Insert Coin')
  end

  xscenario 'It places invalid coins into coin return' do
    vend = VendingMachine.new
    vend.insert('penny')
    expect(vend.coin_return('penny')).to eq('penny')
  end
end
