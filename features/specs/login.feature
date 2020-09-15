#language: pt
@login

Funcionalidade: Login
  Sendo um usuário da loja Automation Practice
  Quero fazer login na plataforma web
  Para acessar o sistema com sucesso

  @login_cliente
  Cenário: Login Cliente

    Quando acesso a url da loja 
    E insiro os dados de login
    | email | flavia.moreira.freitas@gmail.com |
    | senha | automationpractice               |
    Entao vejo se o cliente logou com sucesso

  @login_situacoes
  Esquema do Cenário: Situacoes de Login

    Dado que meu email é "<email>"
    E minha senha é "<senha>"
    Quando insiro esses dados
    Entao a mensagem de alerta é retornada "<mensagem>"

    Exemplos:
    | email                            | senha              | mensagem                                   |
    |emailinvalido@invalido.com        |automationpractice  |There is 1 error\nAuthentication failed.    |
    |flavia.moreira.freitas@gmail.com  |senhainvalida       |There is 1 error\nAuthentication failed.    |
    |                                  |automationpractice  |There is 1 error\nAn email address required.|
    |flavia.moreira.freitas@gmail.com  |                    |There is 1 error\nPassword is required.     |
