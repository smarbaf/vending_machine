require 'vending_machine'

describe VendingMachine do
  it 'shows 5 cents' do
    vend = VendingMachine.new
    vend.insert('nickel')
    expect(vend.display_tally).to eq(5)
  end
  it 'shows 10 cents' do
    vend = VendingMachine.new
    vend.insert('dime')
    expect(vend.display_tally).to eq(10)
  end
  it 'shows 25 cents' do
    vend = VendingMachine.new
    vend.insert('quarter')
    expect(vend.display_tally).to eq(25)
  end
  it 'understands when no coin is inserted' do
    vend = VendingMachine.new
    expect(vend.display_tally).to eq('Insert Coin')
  end
  it 'adds separate entries for a total' do
    vend = VendingMachine.new
    vend.insert('nickel')
    vend.insert('dime')
    vend.insert('quarter')
    expect(vend.display_tally).to eq(40)
  end
  it 'places invalid coins into coin return' do
    vend = VendingMachine.new
    vend.insert('coin')
    expect(vend.coin_return('penny')).to eq('penny')
  end
  it 'subtracts coin return amounts from current total' do
    vend = VendingMachine.new
    vend.insert('dime')
    vend.coin_return('nickel')
    expect(vend.display_tally).to eq(5)
  end
end