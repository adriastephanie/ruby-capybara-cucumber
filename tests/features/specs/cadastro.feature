# language: pt

@featCadastro
Funcionalidade: Fazer cadastro.

@cadastroSucesso
Cenario: Cadastro com sucesso.
    Dado que eu estou no site para cadastrar
    Quando preencho formulário corretamente
    Então o cliente é cadastrado com sucesso

@contaJaCadastrada
Cenario: Deve criar uma conta já cadastrada.
    Dado que eu estou no site para cadastrar
    Quando preeencho formulário com email já cadastrador
    Então o sistema deve mostrar que a conta já foi criada