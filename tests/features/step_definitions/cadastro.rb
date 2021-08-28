Dado('que eu estou no site para cadastrar') do
    visit '/cadastro'
end

Quando('preencher o nome válido') do
    find('#nome').send_keys('Maria Clara')
end

Quando('preencher o e-mail válido') do
    find('#email').send_keys('mariaclara3@teste.com')
end

Quando('preencher a senha válida') do
    find('#senha').send_keys('123456')
    find('.btn').click()
end

Então('o cliente é cadastrado com sucesso') do
    expect(page).to have_content 'Usuário inserido com sucesso'
end

Quando('preencher o nome válido existente') do
    find('#nome').send_keys('Maria Clara')
end

Quando('preencher o e-mail válido existente') do
    find('#email').send_keys('mariaclara1@teste.com')
end

Quando('preencher a senha válida existente') do
    find('#senha').send_keys('123456')
    find('.btn').click()
end

Então('o sistema deve mostrar que a conta já foi criada') do
    expect(page).to have_content 'Endereço de email já utilizado'
end