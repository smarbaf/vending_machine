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
  it 'raises an error when no coin is inserted' do
    vend = VendingMachine.new
    expect { vend.display_tally }.to raise_error 'Insert Coin'
  end
  it 'adds separate entries for a total' do
    vend = VendingMachine.new
    vend.insert('nickel')
    vend.insert('dime')
    vend.insert('quarter')
    expect(vend.display_tally).to eq(40)
  end
  it 'rejects an invalid coin' do
      vend = VendingMachine.new
      expect { vend.insert('penny') }.to raise_error 'Invalid Coin'
  end
end