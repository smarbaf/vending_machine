require 'capybara/rspec'

# As a vendor
# I want a vending machine that accepts coins
# So that I can collect money from the customer


feature 'I want a vending machine which accepts coins' do
  xscenario 'It accepts nickels' do
    vend = VendingMachine.new
    vend.insert('nickel')
    expect(vend.display).to eq(5)
  end
end
