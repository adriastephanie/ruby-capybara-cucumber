# language: pt

@funcional
Funcionalidade: Fazer login.

@cadastroSucesso
Cenario: Deve criar uma conta.
    Dado que eu estou no site para cadastrar
    Quando informar o e-mail válido
    E informar o senha válido
    Então o cliente é cadastrado no sistema

# @criarContaJaCadastrada
# Cenario: Deve criar uma conta já cadastrada.
#     Dado que eu estou no site para cadastrar
#     Quando informar o e-mail válido
#     E informar o senha válido
#     Então o cliente é cadastrado no sistema

# @loginSucesso
# Cenario: Logar com sucesso.
#     Dado que eu estou no site 
#     Quando informar o e-mail válido
#     E informar o senha válido
#     Então o cliente é cadastrado no sistema

# Cenario: Atualizar uma conta.
# Cenario: Não deve criar conta com o mesmo nome.
# Cenario: Deve criar transação.
# Cenario: Deve obter valor atualizado.
# Cenario: Remover uma transação.
