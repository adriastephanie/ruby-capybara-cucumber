# language: pt

@funcional
Funcionalidade: Teste funcional do sistema.

Contexto: 
    Dado que eu esteja logado

@updateConta
Cenario: Atualizar uma conta.
    Quando eu adiciono uma conta
    Então minha conta é salva na lista de contas

@updateContaExistente
Cenario: Não deve criar conta com o mesmo nome.
    Quando eu adiciono uma conta já existente
    Então não deve ser salva 

@updateTransicaoSucesso    
Cenario: Deve criar transação com sucesso.
    Quando eu adiciono uma transação 
    Então minha transação é salva na lista de transições com sucesso
