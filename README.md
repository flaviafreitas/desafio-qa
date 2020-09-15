## Ferramentas do Projeto

Este projeto foi implementado utilizando a linguagem ruby e as seguintes ferramentas:
- Cucumber
- Capybara
- Selenium Webdriver
- Chromedriver
- Rspec

## Pré-requisitos do projeto

- Possuir ruby versão 2.5.1.

Se possuir `rvm` instalado, colocar no terminal o seguinte comando `rvm install 'ruby-2.5.1'`

## Instalacao (linux)
1. git clone https://github.com/flaviafreitas/desafio-qa.git
2. Após a clonagem, é necessário acessar a pasta do projeto e rodar `bundle` no terminal.
3. Ao terminar, é necessário ter baixado o **chromedriver** (https://chromedriver.chromium.org/downloads).
4. Após o download, descompactar e acessar a pasta onde está o arquivo do chromedrive. No terminal, colocar o seguinte comando: `sudo mv chromedriver /usr/local/bin`
Obs: Para Mac, rodar o comando: brew cask install chromedriver


## Rodando o projeto

1. No terminal, acessar a pasta do projeto e executar o comando: cucumber
2. O teste irá executar dois cenários: um de login e um de compra com sucesso 
3. Ao final, no próprio terminal, será exibido o resultado do teste (com os cenários que falharam e os que passaram)

## Relatório

Na pasta do projeto, já existem dois relatórios, um em formato .html e outro em .pdf, que mostram toda a execucao do teste.


