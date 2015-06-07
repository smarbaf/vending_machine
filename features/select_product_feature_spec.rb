feature 'One of a range of products can be selected from the machine' do
  scenario 'offers a range of products' do
    vend = VendingMachine.new
    vend.insert('quarter')
    vend.insert('quarter')
    vend.insert('quarter')
    vend.insert('quarter')
    vend.select('cola')
    expect(vend.product_selection).to eq('cola THANK YOU')
  end


end
