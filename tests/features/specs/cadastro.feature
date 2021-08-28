# language: pt

@featCadastro
Funcionalidade: Fazer cadastro.

@cadastroSucesso
Cenario: Cadastro com sucesso.
    Dado que eu estou no site para cadastrar
    Quando preencher o nome válido
    E preencher o e-mail válido
    E preencher a senha válida
    Então o cliente é cadastrado com sucesso

@contaJaCadastrada
Cenario: Deve criar uma conta já cadastrada.
    Dado que eu estou no site para cadastrar
    Quando preencher o nome válido existente
    E preencher o e-mail válido existente
    E preencher a senha válida existente
    Então o sistema deve mostrar que a conta já foi criada