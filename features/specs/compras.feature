#language: pt
@compras

  Funcionalidade: Compras
  Sendo um usuário cadastrado na loja Automation Practice
  Quero fazer uma compra
  Verificando que a compra foi realizada

    Cenário: Realizar uma compra com sucesso
      Dado que logo no sistema da loja Automation Practice
      Quando adiciono um produto no carrinho de compras e finalizo a compra
      Entao a compra é realizada com sucesso