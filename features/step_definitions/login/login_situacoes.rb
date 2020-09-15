Dado("que meu email é {string}") do |email|
  @email = email
end

Dado("minha senha é {string}") do |senha|
  @senha = senha
end

Quando("insiro esses dados") do
  visit ('http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation')
  find('#email').set @email
  find('#passwd').set @senha
  find('#SubmitLogin').click
end

Entao("a mensagem de alerta é retornada {string}") do |mensagem|
  alerta = find('.alert.alert-danger')
  expect(alerta.text).to eql mensagem
end
