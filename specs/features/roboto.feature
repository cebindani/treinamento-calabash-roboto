# language: pt
Funcionalidade: Treinamento Calabash Roboto

  Contexto:

  Cenário: Login
    Dado que estou na tela de login
    E preencho o campo "User" com "Roboto"
    E preencho o campo "Senha" com "Android"
    Quando tocar no botão de login
    Então devo ver a tela de "Home"

  Cenário: A tela de home exibe uma mensagem de boas vindas ao usuário
    Dado que realizei o login com o usuário "Roboto" e senha "Android"
    E que estou na Home
    Então devo ver a mensagem de boas vindas "Olá Roboto!"

  Cenário: Ao fazer o logoff, o app deverá redirecionar para a tela de login
    Dado que realizei o login com o usuário "Roboto" e senha "Android"
    E que estou na Home
    Quando tocar no botão "Sair"
    Então devo ver a tela de login
