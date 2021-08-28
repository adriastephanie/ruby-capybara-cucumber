# language: pt

@funcional
Funcionalidade: Teste funcional do sistema.

Contexto: 
    Dado que eu esteja logado

@updateConta
Cenario: Atualizar uma conta.
    Quando eu adiciono uma conta
    Então minha conta é salva na lista de contas

# Cenario: Atualizar uma conta.
# Cenario: Não deve criar conta com o mesmo nome.
# Cenario: Deve criar transação.
# Cenario: Deve obter valor atualizado.
# Cenario: Remover uma transação.