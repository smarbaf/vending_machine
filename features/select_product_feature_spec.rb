feature 'One of a range of products can be selected from the machine' do
  scenario 'offers a range of products' do
    vend = VendingMachine.new
    vend.insert('quarter')
    vend.insert('quarter')
    vend.insert('quarter')
    vend.insert('quarter')
    expect(vend.product).to eq('cola')
  end


end
