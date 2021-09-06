Dado('que eu estou no site para cadastrar') do
    cadastro.load
end

Quando('preencho formulário corretamente') do
    cadastro.preencher_formulario
end


Então('o cliente é cadastrado com sucesso') do
    expect(page).to have_content 'Endereço de email já utilizado'
  end