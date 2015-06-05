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
  end

  scenario 'It reports when no coin is inserted' do
    vend = VendingMachine.new
    expect { vend.display_tally }.to raise_error 'Insert Coin'
  end

  scenario 'It rejects invalid coins' do
    vend = VendingMachine.new
    expect { vend.insert('penny') }.to raise_error 'Invalid Coin'
  end
end
