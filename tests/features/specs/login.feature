# language: pt

@funcional
Funcionalidade: Fazer login.

@loginSucesso
Cenario: Logar com sucesso.
    Dado que eu estou no site para logar
    Quando informar o e-mail válido
    E informar o senha válido
    Então o cliente é redirecionado ao sistema

@loginSemSucesso
Cenario: Logar sem sucesso.
    Dado que eu estou no site para logar
    Quando informar o e-mail inválido
    E informar o senha inválido
    Então o cliente não deve entrar no sistema

# Cenario: Cadastro com sucesso.
#     Dado que eu estou no site para cadastrar
#     Quando informar o e-mail válido
#     E informar o senha válido
#     Então o cliente é cadastrado com sucesso

# @contaJaCadastrada
# Cenario: Deve criar uma conta já cadastrada.
#     Dado que eu estou no site para cadastrar
#     Quando informar o e-mail válido
#     E informar o senha válido
#     Então o sistema deve mostrar mensagem de conta existente

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
