#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email         | kaiogabriel@hotmail.com |
            | senha         | 1234teste               |
            | senha_confirma| 1234teste               | 
        Então devo ser redirecionado para a área logada

    Cenario: Email não informado
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email         |                         |
            | senha         | 1234teste               |
            | senha_confirma| 1234teste               |
        Então devo ver a mensagem: "Oops! Informe seu email."

    Cenario: Senha não informada
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email         | kaiogabriel@hotmail.com |
            | senha         |                         |
            | senha_confirma|                         |
        Então devo ver a mensagem: "Oops! Informe sua senha."

    Cenario: Senha divergente
        Dado que acesso a página de cadastro
        Quando submeto meu cadastro com:
            | email         | kaiogabriel@hotmail.com |
            | senha         | 1234teste               |
            | senha_confirma| 1234etset               |
        Então devo ver a mensagem: "Oops! Senhas não são iguais."

    Cenario: Nenhum campo preenchido
        Dado que acesso a página de cadastro
        Quando submeto meu cadastro com:
            | email         | |
            | senha         | |
            | senha_confirma| |
        Então devo ver a mensagem: "Oops! Informe seu email e sua senha."
