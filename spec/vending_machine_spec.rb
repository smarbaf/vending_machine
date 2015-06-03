require 'vending_machine'

describe VendingMachine do
  it 'shows 5 cents' do
    vend = VendingMachine.new
    vend.insert('nickel')
    expect(vend.display()).to eq(5)
  end
end