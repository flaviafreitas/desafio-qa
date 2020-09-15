Dado("que logo no sistema da loja Automation Practice") do
  visit ('http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation')
  find('#email').set 'flavia.moreira.freitas@gmail.com'
  find('#passwd').set 'automationpractice'
  find('#SubmitLogin').click
end

Quando("adiciono um produto no carrinho de compras e finalizo a compra") do
  find('a', text: 'Women').click
  page.execute_script("window.scrollBy(0,1500)")
  find('a', text: 'Faded Short Sleeve T-shirts').click
  first('span', text: 'Add to cart').click
  first('span', text: 'Proceed to checkout').click
  find('span', text: 'Proceed to checkout').click
  find('span', text: 'Proceed to checkout').click
  find('.checker').click
  find('span', text: 'Proceed to checkout').click
  find('a', text: 'Pay by bank wire').click
  page.execute_script("window.scrollBy(0,1500)")
  find('.button.btn.btn-default.button-medium', text: 'I confirm my order').click
end

Entao("a compra é realizada com sucesso") do
  completa = find('.dark')
  expect(completa.text).to eql "Your order on My Store is complete."
end
