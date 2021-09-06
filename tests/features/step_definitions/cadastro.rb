Dado('que eu estou no site para cadastrar') do
    cadastro.load
end

Quando('preencho formulário corretamente') do
    cadastro.preencher_formulario
end


Então('o cliente é cadastrado com sucesso') do
    expect(page).to have_content 'Usuário inserido com sucesso'
end

Quando('preeencho formulário com email já cadastrado') do
    cadastro.preencher_formulario_conta_existente
end

Então('o sistema deve mostrar que a conta já existe') do
    expect(page).to have_content 'Endereço de email já utilizado'
end