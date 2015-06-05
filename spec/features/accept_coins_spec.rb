require 'capybara/rspec'

# As a vendor
# I want a vending machine that accepts coins
# So that I can collect money from the customer


feature 'I want a vending machine which accepts coins' do
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
end
