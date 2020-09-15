Quando("acesso a url da loja") do
  visit ('http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation')
end

Quando("insiro os dados de login") do |table|
  @cliente = table.rows_hash
  find('#email').set @cliente[:email]
  find('#passwd').set @cliente[:senha]
  find('#SubmitLogin').click
end

Entao("vejo se o cliente logou com sucesso") do
  msg = find('.page-heading')
  expect(msg.text).to eql "MY ACCOUNT"
end